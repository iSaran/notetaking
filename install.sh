#!/bin/bash

CURRENTDIRECTORY=`pwd`
MYNOTES=$CURRENTDIRECTORY

echo "Editing ~/.bashrc: Source bashnotes "
echo "Remove previous instances of sourcing bashnotes"
sed -i '/Iason Notes/d' ~/.bashrc  

# Export to path Iason notes if notetaking is installed
echo "Adding a new instance in bashrc"
echo "" >> ~/.bashrc
echo "# Iason Notes" >> ~/.bashrc
echo "export MYNOTES=$CURRENTDIRECTORY # Iason Notes" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "if [ -d $MYNOTES/bin ]; then # Iason Notes" >> ~/.bashrc
echo '    export PATH=$PATH:$MYNOTES/bin # Iason Notes' >> ~/.bashrc
echo "fi # Iason Notes" >> ~/.bashrc
echo "" >> ~/.bashrc

cd $1
mkdir md pdf bib fig docx
cd md
cp $MYNOTES/config/template1.md .

