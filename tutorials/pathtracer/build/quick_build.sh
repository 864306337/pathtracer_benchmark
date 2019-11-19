# Build ISPC wrapper

#change --cpu=broadwell to --cpu=skx for skylake architecture construction
ispc -I/tools/Embree/3.2.4/include --arch=x86-64 --cpu=broadwell --target=avx2-i32x16 benchmark_wrapper.ispc -o benchmark_wrapper.o -h benchmark_wrapper.h

# Create the pathtracer_device object
g++ -g pathtracer_device.cpp -I. -O3 -D TASKING_TBB -c -l:libtbb.so -l:libembree3.so -o pathtracer_device.o

# Compile pathtracer
g++ -I. -o pathtracer benchmark_wrapper.o sysinfo.o mutex.o alloc.o filename.o stringstream.o tokenstream.o application.o string.o pfm.o ppm.o tga.o image.o texture.o obj_loader.o ply_loader.o xml_parser.o xml_writer.o xml_loader.o corona_loader.o scenegraph.o geometry_creation.o scene.o imgui.o imgui_draw.o imgui_impl_glfw_gl2.o tutorial_device.o tutorial.o ambient_light.o directional_light.o point_light.o light.o scene_device.o pathtracer_device.o pathtracer.cpp -O3 -D TASKING_TBB -std=c++11 -l:libtbb.so -l:libembree3.so -l:libpthread.so -l:libdl.so -l:libX11.so -l:libXrandr.so -l:libXi.so -l:libXxf86vm.so -l:libXcursor.so -l:libXinerama.so -l:libGL.so -l:libGLU.so -l:libglfw.so

