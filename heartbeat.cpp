#include <chrono>
#include <sys/socket.h>
#include <sys/types.h>
#include <iostream>
#include <string>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include "cxxopts.hpp"

#include "network_utils.h"
#include <format>

#define DURATION 30 // process should run for 30 seconds



int create_server_listen_socket(int port) {
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd <= 0) {
        std::cerr << "Creating server socket failed" << std::endl;
        exit(EXIT_FAILURE);
    }

    // Set master socket to allow multiple connections; this is a good habit
    int yes = 1;
    if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes)) < 0) {
        std::cerr << "setsockopt() failed" << std::endl;
        exit(EXIT_FAILURE);
    }

    // Create sockaddr_in struct and set port
    sockaddr_in addr{};
    if (make_server_sockaddr(&addr, port) < 0) {
        std::cerr << "make_server_sockaddr() failed" << std::endl;
        exit(EXIT_FAILURE);
    }

    // Bind the socket to the port
    if (bind(sockfd, reinterpret_cast<sockaddr *>(&addr), sizeof(addr)) < 0) {
        std::cerr << "bind() failed" << std::endl;
        exit(EXIT_FAILURE);
    }

    // listen for incoming connections
    if (listen(sockfd, MAX_CLIENTS) < 0) {
        perror("listen() failed");
        exit(EXIT_FAILURE);
    }

    std::cout << "Echo server listening on port " << port << std::endl;
    return sockfd;
}





static void serve(int sockfd, int n) {
    
    sockaddr_in addr;
    socklen_t size = sizeof(addr);
    int echofd = accept(sockfd, (sockaddr *)(&addr), &size);
    if (echofd < 0) {
        std::cout << "error occured " << strerror(errno) << std::endl;
    }

    auto start = std::chrono::high_resolution_clock::now();
    const auto duration = std::chrono::seconds(DURATION);
    const auto interval = std::chrono::seconds(n);
    ssize_t n_sent;
    char a = 'a';

    while (std::chrono::high_resolution_clock::now() - start < duration) {
        n_sent = send(echofd, &a, sizeof(a), 0);
        std::cout << std::format("Action performed. Sent {} bytes", n_sent) << std::endl;
        sleep(n);
    }

    close(echofd);
    close(sockfd);

} // serve()



int main(int argc, char *argv[]) {
    // use cxxopts to add port option
    cxxopts::Options options("Echo Server", "An echo server");
    options.add_options()("p,port", "Port number",
                          cxxopts::value<int>()->default_value(
                              std::to_string(DEFAULT_SERVER_PORT)))
                        ("n,heartbeat", "Beat time",
                          cxxopts::value<int>()->default_value(
                            std::to_string(DEFAULT_HEARTBEAT)
                          ));


    // parse command line arguments
    auto result = options.parse(argc, argv);

        // print help
    if (argc == 1 ||  (!result.count("port"))) {
        std::cout << options.help() << std::endl;
        return 0;
    }


    int port = result["port"].as<int>();
    int n = result["heartbeat"].as<int>();

    int sockfd = create_server_listen_socket(port); // create server socket
    serve(sockfd, n);                                  // serve clients
    return 0;
}