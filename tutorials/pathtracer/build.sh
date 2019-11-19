## ============================================================================================== ##
## Build object files in /common
## ============================================================================================== ##

################################################################################
## Build common/sys
################################################################################
# Create sysinfo object
g++ -c ../../common/sys/sysinfo.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create mutex object
g++ -c ../../common/sys/mutex.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create alloc object
g++ -c ../../common/sys/alloc.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create embree filename object
g++ -c ../../common/sys/filename.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create string object
g++ -c ../../common/sys/string.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

################################################################################
## Build common/lexers
################################################################################
# Create stringstream object
g++ -c ../../common/lexers/stringstream.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tokenstream object
g++ -c ../../common/lexers/tokenstream.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

## ============================================================================================== ##
## Build object files in /tutorials/common/
## ============================================================================================== ##

# Create pfm object
g++ -c ../common/image/pfm.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create ppm object
g++ -c ../common/image/ppm.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tga object
g++ -c ../common/image/tga.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create image object
g++ -c ../common/image/image.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so


# Build imgui. Turns out I have to do it all in the same line to get it to work correct.
g++ -c ../common/imgui/imgui.cpp ../common/imgui/imgui_draw.cpp ../common/imgui/imgui_impl_glfw_gl2.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Build light objects
g++ -c ../common/lights/light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -c ../common/lights/ambient_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -c ../common/lights/directional_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -c ../common/lights/point_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so


# Create texture object
g++ -c ../common/scenegraph/texture.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create obj_loader object
g++ -c ../common/scenegraph/obj_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create ply_loader object
g++ -c ../common/scenegraph/ply_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_parser object
g++ -c ../common/scenegraph/xml_parser.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_writer object
g++ -c ../common/scenegraph/xml_writer.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_loader object
g++ -c ../common/scenegraph/xml_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create corona_loader object
g++ -c ../common/scenegraph/corona_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create scenegraph object
g++ -c ../common/scenegraph/scenegraph.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create geometry_creation object
g++ -c ../common/scenegraph/geometry_creation.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so


# Create the scene object file
g++ -c ../common/tutorial/scene.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tutorial_device object
g++ -c ../common/tutorial/tutorial_device.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create the tutorial object file
g++ -c ../common/tutorial/tutorial.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# create scene_device object file
g++ -c ../common/tutorial/scene_device.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create application object
g++ -c ../common/tutorial/application.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so


#the rest is handled in quick_build.sh
./quick_build.sh
