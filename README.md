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

#install ligplot+
#Register to download .zip file
unzip LigPlus.zip
echo 'alias ligplus="java -cp ~/path/to/LigPlus -jar ~/path/to/LigPlus/LigPlus.jar"' >> ~/.bashrc 
source ~/.bashrc

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

#Update R to version 3.4.2
sudo apt-get remove r-base-core
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update && sudo apt-get install r-base r-base-dev




