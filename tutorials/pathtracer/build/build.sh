## ============================================================================================== ##
## Build object files in /common
## ============================================================================================== ##

################################################################################
## Build common/sys
################################################################################
# Create sysinfo object
g++ -g -c ../../../common/sys/sysinfo.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create mutex object
g++ -g -c ../../../common/sys/mutex.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create alloc object
g++ -g -c ../../../common/sys/alloc.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create embree filename object
g++ -g -c ../../../common/sys/filename.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create string object
g++ -g -c ../../../common/sys/string.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

################################################################################
## Build common/lexers
################################################################################
# Create stringstream object
g++ -g -c ../../../common/lexers/stringstream.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tokenstream object
g++ -g -c ../../../common/lexers/tokenstream.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

## ============================================================================================== ##
## Build object files in /tutorials/common/
## ============================================================================================== ##

# Create pfm object
g++ -g -c ../../common/image/pfm.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create ppm object
g++ -g -c ../../common/image/ppm.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tga object
g++ -g -c ../../common/image/tga.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create image object
g++ -g -c ../../common/image/image.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so





# Build imgui. Turns out I have to do it all in the same line to get it to work correct.
g++ -g -c ../../common/imgui/imgui.cpp ../../common/imgui/imgui_draw.cpp ../../common/imgui/imgui_impl_glfw_gl2.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so





g++ -g -c ../../common/lights/light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -g -c ../../common/lights/ambient_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -g -c ../../common/lights/directional_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

g++ -g -c ../../common/lights/point_light.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so





# Create texture object
g++ -g -c ../../common/scenegraph/texture.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create obj_loader object
g++ -g -c ../../common/scenegraph/obj_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create ply_loader object
g++ -g -c ../../common/scenegraph/ply_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_parser object
g++ -g -c ../../common/scenegraph/xml_parser.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_writer object
g++ -g -c ../../common/scenegraph/xml_writer.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create xml_loader object
g++ -g -c ../../common/scenegraph/xml_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create corona_loader object
g++ -g -c ../../common/scenegraph/corona_loader.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create scenegraph object
g++ -g -c ../../common/scenegraph/scenegraph.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create geometry_creation object
g++ -g -c ../../common/scenegraph/geometry_creation.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so





# Create the scene object file
g++ -g -c ../../common/tutorial/scene.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create tutorial_device object
g++ -g -c ../../common/tutorial/tutorial_device.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create the tutorial object file
g++ -g -c ../../common/tutorial/tutorial.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# create scene_device object file
g++ -g -c ../../common/tutorial/scene_device.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so

# Create application object
g++ -g -c ../../common/tutorial/application.cpp -O3 -D TASKING_TBB -l:libtbb.so -l:libembree3.so




# Build ISPC wrapper
#ispc -I/tools/Embree/3.2.4/include --arch=x86-64 --cpu=skx --target=avx512skx-i32x16 ../benchmark_wrapper.ispc -o benchmark_wrapper.o -h ../benchmark_wrapper.h

ispc -g -I/tools/Embree/3.2.4/include --arch=x86-64 --cpu=broadwell --target=avx2-i32x16 ../benchmark_wrapper.ispc -o benchmark_wrapper.o -h ../benchmark_wrapper.h

# Create the pathtracer_device object
g++ -g ../pathtracer_device.cpp -I. -O3 -D TASKING_TBB -c -l:libtbb.so -l:libembree3.so -o pathtracer_device.o

# Compile pathtracer
g++ -g -I. -o pathtracer benchmark_wrapper.o sysinfo.o mutex.o alloc.o filename.o stringstream.o tokenstream.o application.o string.o pfm.o ppm.o tga.o image.o texture.o obj_loader.o ply_loader.o xml_parser.o xml_writer.o xml_loader.o corona_loader.o scenegraph.o geometry_creation.o scene.o imgui.o imgui_draw.o imgui_impl_glfw_gl2.o tutorial_device.o tutorial.o ambient_light.o directional_light.o point_light.o light.o scene_device.o pathtracer_device.o ../pathtracer.cpp -O3 -D TASKING_TBB -std=c++11 -l:libtbb.so -l:libembree3.so -l:libpthread.so -l:libdl.so -l:libX11.so -l:libXrandr.so -l:libXi.so -l:libXxf86vm.so -l:libXcursor.so -l:libXinerama.so -l:libGL.so -l:libGLU.so -l:libglfw.so
