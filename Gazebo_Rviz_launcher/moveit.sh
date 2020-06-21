# allows 15 seconds for Gazebo to launch
sleep 15

# launches a new terminal and launches the moveit package
gnome-terminal -e "bash -c \"roslaunch turtlebot3_manipulation_moveit_config move_group.launch; exec bash\""
