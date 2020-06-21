# allows time (in seconds) for Gazebo and moveit package to launch 
sleep 35

# launch rviz in a new terminal
gnome-terminal -e "bash -c \"roslaunch turtlebot3_manipulation_gui turtlebot3_manipulation_gui.launch; exec bash\""
