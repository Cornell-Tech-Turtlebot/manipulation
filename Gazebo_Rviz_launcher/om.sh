reset
export TURTLEBOT3_MODEL=waffle_pi


chmod 777 ./moveit.sh
bash moveit.sh &
#gnome-terminal -e "bash -c \"bash moveit.sh; exec bash\""

chmod 777 ./rviz.sh
bash rviz.sh &
#gnome-terminal -e "bash -c \"bash rviz.sh; exec bash\""
roslaunch turtlebot3_manipulation_gazebo turtlebot3_manipulation_gazebo.launch paused:=false
#
