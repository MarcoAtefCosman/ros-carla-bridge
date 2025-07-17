# ros-carla-bridge

### The aim of this repository is to investigate the carla-ros bidge to grasp data from the carla simulator and visualize them at rviz.

### Installation
- Built a docker image to solve the compatibilty issues, this docker image is based on ubuntu 20.04, ros2 foxy, carla 0.9.13 and python 3.7

### How to run
- launch carla simulator : ./CarlaUE4.sh -vulkan -nosound -prefernvidia   -quality-level=Low   -fps=15   -carla-server -world-port=2000   -benchmark
- init the ros-carla bridge : ros2 launch carla_ros_bridge carla_ros_bridge.launch.py \
  host:=localhost \
  port:=2000 \
  spawn_ego_vehicle:=true \
  synchronous_mode:=true \
  fixed_delta_seconds:=0.5 \
  timeout:=300.0

- spawn the ego vehicle : ros2 launch carla_spawn_objects carla_spawn_objects.launch.py

- run the controller (can be manually controlled or run in autopilot mode): ros2 launch carla_manual_control carla_manual_control.launch.py

- in case of multi-robot system, we can make use of the carla examples to generat traffic : python3 examples/generate_traffic.py
