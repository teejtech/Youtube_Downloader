#!/data/data/com.termux/files/usr/bin/bash

# Project name : Youtube_Downloader
# Coded by:Tee_J_Tech
# Github: https://github.com/teejtech/youtube_downloader
# Date : 23/12/2022


#make it more easy to update!
echo -e "\e[035m"  "Updating default packages\n"
apt update && apt upgrade -y

echo -e "\e[032m" "Requesting acces to storage\n"
echo -e "\e[032m" "Allow Storage Permission!"
sleep 2
termux-setup-storage 

#echo -e "\e[033m" "Installing python\n"
pkg install python -y

echo -e "\e[034m"  "Installing yt-dlp\n"
pip install yt-dlp

echo -e "\e[032m"  "Making the Youtube Directory to download the Vidoes\n"
mkdir ~/storage/shared/Video/Youtube


echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Creating Termux-URL-Opener Script.\n"

mv termux-url-opener ~/bin/

chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\e[032m" "You are now good to go!"
echo -e "\e[032m" "Now you can share any Youtube video with Termux and you will be ask to select the quality of your downloaded video and after that,It will be automatically Downloaded. If You will share shorts, it will be download automatically."
