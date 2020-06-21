# allows time (in seconds) for Gazebo and moveit package to launch 
sleep 25

# launch rviz in a new terminal
gnome-terminal -e "bash -c \"roslaunch turtlebot3_manipulation_moveit_config moveit_rviz.launch; exec bash\""
