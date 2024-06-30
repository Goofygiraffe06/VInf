#!/bin/bash

echo "Welcome to VInf.vim Setup Wizard!"
echo "---------------------------------"
echo "This wizard will guide you through the installation of VInf.vim in your Vim environment."

echo ""
echo "Step 1/2: Downloading VInf.vim plugin..."
echo "---------------------------------------"
mkdir -p ~/.vim/plugin
curl -LSso ~/.vim/plugin/VInf.vim https://raw.githubusercontent.com/Goofygiraffe06/VInf/main/VInf.vim
echo "VInf.vim plugin downloaded successfully!"

echo ""
echo "Step 2/2: Activating VInf.vim in your .vimrc..."
echo "---------------------------------------------"
echo "source ~/.vim/plugin/VInf.vim" >> ~/.vimrc
echo "VInf.vim activated in .vimrc!"

echo ""
echo "Congratulations! VInf.vim has been successfully installed and activated."
echo "You can now start Vim and use :VInf command to insert system and compiler information."

echo ""
echo "Thank you for using VInf.vim Setup Wizard. Happy coding!"

