# setup
#install Amber-tools


#install Autodock-vina
sudo apt-get install autodock-vina

#install mglTools
cd /home/arnold/
wget "http://mgltools.scripps.edu/downloads/downloads/tars/releases/REL1.5.6/mgltools_x86_64Linux2_1.5.6.tar.gz"
tar -zxvf mgltools_x86_64Linux2_1.5.6.tar.gz
cd mgltools_x86_64Linux2_1.5.6
export PATH="$PATH:/home/arnold/mgltools_x86_64Linux2_1.5.6/bin"
alias pmv='/home/arnold/mgltools_x86_64Linux2_1.5.6/bin/pmv'
alias adt='/home/arnold/mgltools_x86_64Linux2_1.5.6/bin/adt'
alias vision='/home/arnold/mgltools_x86_64Linux2_1.5.6/bin/vision'
alias pythonsh='/home/arnold/mgltools_x86_64Linux2_1.5.6/bin/pythonsh'
export PATH="$PATH:/home/arnold/mgltools_x86_64Linux2_1.5.6/MGLToolsPckgs/AutoDockTools/Utilities24/"
#========================

#install ligplot+
#Register to download .zip file
unzip LigPlus.zip
echo 'alias ligplus="java -cp ~/path/to/LigPlus -jar ~/path/to/LigPlus/LigPlus.jar"' >> ~/.bashrc 
source ~/.bashrc
#========================

#Install MEGA on linux
REF: http://insidemega.blogspot.co.za/2014/01/install-mega5-on-linux-ubuntu.html
sudo apt-get install wine
sudo apt-get install winetricks
#Run winetrix: select default wineprefix option
#install a windows dll or component
#install Internet Explorer 7 (ie7)
#install gdiplus
#install  msxml3 #download from pop-up window, paste in popup directory
#Download MEGA6 from windowsGUI http://www.megasoftware.net
#install 
wine MEGA6.06_setup.exe
#========================

#Update R to version 3.4.2
sudo apt-get remove r-base-core
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update && sudo apt-get install r-base r-base-dev
#========================
#Upgrade packages in R after r-base version upgrade
#Reference: https://github.com/rocker-org/shiny/issues/48#issuecomment-678761776
#This is done in R shell 
new_packages <- installed.packages()
df <- as.data.frame(new_packages)
D2 = subset(df, !(Built %in% c('4.0.0','4.0.2')))
D2 <- as.data.frame(D2)
install.packages(D2$Package)
#===========================


#========================
#Install biotools
sudo apt-get install tk-dev
sudo apt-get install bwidget
#Add installation repo
sudo add-apt-repository ppa:ubuntugis/ppa
#update
sudo apt-get update
#Install gdal  * ensure only a single version/installation is done, else problems downstream with installation of spatialEpi)
sudo apt-get install libudunits2-dev libgdal-dev libgeos-dev libproj-dev #updates gdal version
#else 
sudo apt-get update
sudo apt-get install gdal-bin
sudo apt-get -y install python-gdal             #Installs gdal
sudo apt -y install gdal-bin python3-gdal       #python3
#Install "sf" and "foreign" using conda (unproblematic)
conda create -n rsf -c conda-forge r-sf
source activate rsf
conda install -c conda-forge r-foreign 
# In R terminal
install.packages("rpanel", dependencies = TRUE)
install.packages("SpatialEpi", dependencies=TRUE)
## Activate conda environment before running R
#========================




