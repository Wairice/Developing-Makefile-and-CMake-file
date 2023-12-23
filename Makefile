CXX = g++
CXXFLAGS = -std=c++11

LIBRARY = libcalculator.a
EXECUTABLE = calculator

SOURCES = main.cpp calculator.cpp
OBJECTS = $(SOURCES:.cpp=.o)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJECTS) -L. -lcalculator

$(LIBRARY): calculator.o
	ar rcs $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(EXECUTABLE) $(LIBRARY) $(OBJECTS)
