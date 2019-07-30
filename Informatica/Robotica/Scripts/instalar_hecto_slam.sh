#!/bin/bash
#Autor - Licia Sales
#30-Jul-2019

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
		./configura_bash_simulador.sh
		source ~/.bashrc
		echo "Só usar jovem!"
		gnome-terminal -e "roslaunch turtlebot3_gazebo turtlebot3_world.launch"	
		gnome-terminal -e "roslaunch turtlebot3_slam turtlebot3_slam.launch  slam_methods:=hector"	
		gnome-terminal -e "roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch"	
		gnome-terminal -e "rviz -d `rospack find turtlebot3_slam`/rviz/turtlebot3_hector.rviz"	
	
		sudo mv ~/.bashrcopy ~/.bashrc
		
		echo 0
		fi
	fi
fi



















































































sudo apt-get install build-essential cmake unzip pkg-config


sudo apt-get install libjpeg-dev libpng-dev libtiff-dev




sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

sudo apt-get install libxvidcore-dev libx264-dev


sudo apt-get install libgtk-3-dev

sudo apt-get install libatlas-base-dev gfortran


sudo apt-get install python-dev

sudo apt-get install python-numpy



mkdir ~/tmp
cd ~/tmp

rm -Rf opencv-3.4.4/ opencv opencv_contrib opencv_contrib-3.4.4/


wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.4.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.4.zip


unzip opencv.zip

unzip opencv_contrib.zip


mv opencv-3.4.4/ opencv
mv opencv_contrib-3.4.4/ opencv_contrib



cd ~/tmp/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/tmp/opencv_contrib/modules \
    -D PYTHON_EXECUTABLE=/usr/bin/python \
    -D BUILD_EXAMPLES=ON ..



make -j4


sudo make install

echo "export PYTHONPATH=/usr/local/python:/usr/lib/python:\$PYTHONPATH" >> ~/.bashrc


sudo ldconfig



sudo apt install python-pip


sudo -H pip install jupyter

source ~/.bashrc

