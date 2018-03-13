LIB_DIR = -L/usr/local/lib
LIBRARIES = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
INCLUDE_DIR = -I/usr/local/include -I/Users/jamessral/code/sfml/SpaceSurvivor/include
FRAMEWORKS = -I/Library/Frameworks -framework Cocoa

CXX = g++
CFLAGS = -Wall -Wpedantic -std=c++14

all: SpaceSurvivor


%.o: %.cpp
	$(CXX) -c $< $(CXXFLAGS) -o $@ $(LIB_DIR) $(LIBRARIES) $(INCLUDE_DIR) $(FRAMEWORKS)


%.o: %.hpp
	$(CXX) -c $< -o $@ $(CXXFLAGS) -o $@ $(LIB_DIR) $(LIBRARIES) $(INCLUDE_DIR) $(FRAMEWORKS)

SpaceSurvivor:
	$(CXX) -o SpaceSurvivor src/*.cpp $(LIB_DIR) $(LIBRARIES) $(INCLUDE_DIR) $(FRAMEWORKS)

clean:
	rm SpaceSurvivor
