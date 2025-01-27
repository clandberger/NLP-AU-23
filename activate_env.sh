#!/bin/bash
#bash /work/ChristofferLandberger#2751/setup_git.sh
# pip freeze > reguirement.txt - everything listed
# key goal - installing and going back to 

sudo apt-get update
sudo apt-get install python3-venv

# create env called env
python3 -m venv env

# activate env
source ./env/bin/activate

# requirements

python3 -m pip install ipykernel
python3 -mipykernel install --user --name=env
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

## if requirements change then rerun this again, also in requirements.txt
