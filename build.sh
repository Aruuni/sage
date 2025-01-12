#!/bin/bash

virtualenv --python=python3.6 ~/venvpy36
source ~/venvpy36/bin/activate

cd ~/sage
pip install --no-deps -r requirements.txt
pip install -r requirements.txt
pip install -e .
deactivate

cd ~/sage/sage_rl
bash build.sh
bash set_sysctl.sh

cd ~/sage/sage_rl
bash cp_models.sh
