CXX = x86_64-w64-mingw32-g++
CFLAGS = -Wall -Werror -fpic
BUILD_DIR = build
LIB_DIR = usr/lib/libcv2.lib
LIBS = -L C:\Users\Administrator\Downloads\opencv\build\x64\vc14\bin
LDFLAGS = -lopencv_highgui -lopencv_core -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_imgcodecs -lopencv_imgproc -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_shape -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videoio
SOURCE_DIR = ../src/cpp
INCLUDE = -I C:\Users\Administrator\Downloads\opencv\build\include
OBJECTS = $(BUILD_DIR)/Mat.o $(BUILD_DIR)/imgproc.o $(BUILD_DIR)/cv2.o $(BUILD_DIR)/videoio.o $(BUILD_DIR)/tracking.o

$(BUILD_DIR)/%.o: $(SOURCE_DIR)/%.cpp
	$(CXX) $(INCLUDE) $(CFLAGS) -c -o $@ $<

$(LIB_DIR): $(OBJECTS)
	$(CXX) $(LIBS) -shared -o $(LIB_DIR) $(BUILD_DIR)/*.o $(LDFLAGS)

all: $(LIB_DIR)

clean:
	rm -rf build/*.o
	rm -rf usr/lib/*.lib