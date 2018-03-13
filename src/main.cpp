#include <SFML/Window.hpp>
#include <iostream>

int main(int argc, char const *argv[]) {
    sf::Window window(sf::VideoMode(800, 600), "Space Survivor");

    while (window.isOpen()) {
        sf::Event event;

        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }


        }
    }

    return 0;
}
