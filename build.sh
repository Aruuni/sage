#!/bin/bash
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $CURRENT_DIR
virtualenv --python=python3.6 ~/venvpy36
source ~/venvpy36/bin/activate

cd $CURRENT_DIR
pip install --no-deps -r requirements.txt
pip install -r requirements.txt
pip install -e .
deactivate

cd sage_rl
bash build.sh
bash set_sysctl.sh

cd "$CURRENT_DIR/sage_rl"
bash cp_models.sh
