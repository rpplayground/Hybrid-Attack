#!/bin/bash

# nes baseline targeted attack on normal mnist model
python3 hybrid_attack.py -n 100 --no_save_model --attack_method nes --attack_type targeted  

# nes hybrid targeted attack on normal mnist model
python3 hybrid_attack.py --with_local --no_tune_local -n 100 --no_save_model --attack_method nes

# nes hybrid targeted attack on normal mnist model with local model tuning
python3 hybrid_attack.py --with_local --load_imgs -n 100 --no_save_model --attack_method nes