#pragma once

#include <atomic>
#include <optional>
#include <thread>

class AAWProxy {
public:
    std::optional<std::thread> startServer();

private:
    enum class ProxyDirection {
        TCP_to_USB,
        USB_to_TCP
    };

    void handleClient(int server_fd);
    void forward(ProxyDirection direction, std::atomic<bool>& should_exit);

    int m_usb_fd = -1;
    int m_tcp_fd = -1;
};