repo_dir=$(pwd)

cd ~/catkin_ws/src/
git clone https://github.com/ROBOTIS-GIT/turtlebot3_manipulation.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_manipulation_simulations.git
cd ~/catkin_ws && catkin_make

cd $repo_dir

# set robot type
export TURTLEBOT3_MODEL=waffle_pi

# set file permisions and background process
chmod 777 ./moveit.sh
bash moveit.sh &

# line below is equivalent to previous two lines but not as clean. kept in case chmod is an issue during testing
#gnome-terminal -e "bash -c \"bash moveit.sh; exec bash\""

# set file permisions and background process
chmod 777 ./rviz.sh
bash rviz.sh &

# line below is equivalent to previous two lines but not as clean. kept in case chmod is an issue during testing
#gnome-terminal -e "bash -c \"bash rviz.sh; exec bash\""

# launch Gazebo and start simulation automatically
roslaunch turtlebot3_manipulation_gazebo turtlebot3_manipulation_gazebo.launch paused:=false
# end of file
