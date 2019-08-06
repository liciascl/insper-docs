#!/bin/bash
#Autor - Licia Sales
#30-Jul-2019
source ~/catkin_ws/devel/setup.bash

sudo apt-get install -y ros-melodic-slam-karto
echo "Vamos instalar os pacotes capazes de realizar slam"
if [ $? -eq 0 ]
then
    echo "Vamos instalar os pacotes capazes de realizar slam"
    	sudo apt-get install -y ros-melodic-slam-karto
	if [ $? -eq 0 ]
    	then	
	echo "Vamos precisar compilar o hector_map a partir do código-fonte"
	cd ~/catkin_ws/src
	git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam
	cd hector_slam
	sudo rm -Rf hector_geotiff*
	cd ~/catkin_ws
	catkin_make

	   if [ $? -eq 0 ]
   	   then
		echo "vamos testar agora"
		sudo mv ~/.bashrc ~/.bashrcopy
		cp ~/insper-docs/Informatica/Robotica/Scripts/.bashrc ~/
		source ~/.bashrc
		source ~/catkin_ws/devel/setup.bash
		screen -dmS ROBO bash
		screen -S ROBO -X screen -t GAZEBO bash -ic "roslaunch turtlebot3_gazebo turtlebot3_world.launch"
		screen -S ROBO -X screen -t SLAM bash -ic "roslaunch turtlebot3_slam turtlebot3_slam.launch  slam_methods:=hector"
		sleep 2
		screen -S ROBO -X screen -t TELEOP bash -ic "roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch"
		screen -S ROBO -X screen -t RVIZ bash -ic "rviz -d `rospack find turtlebot3_slam`/rviz/turtlebot3_hector.rviz"

		sudo mv ~/.bashrcopy ~/.bashrc
		echo "Só usar jovem!"
		echo 0
		fi
	fi
fi

