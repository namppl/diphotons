#bash runAllFits_ZG.sh fit_v0
python bkg_bias.py --throw-toys --throw-from-model --neg-weights-workaround --n-toys=1000 --components data --models $1 --fit-name fit_v0 --store-new-only --read-ws EventYields_v0_10fb_fit_v0_final_ws.root -o toys_mcBIAS_v4_$1/toys_input.root -O ./toys_mcBIAS_v4_$1/ --observable 'mass[330,200,3500]'
./submit_toys_ZG.sh 8nm toys_mcBIAS_v4_$1/toys_input.root toys_mcBIAS_v4_$1 1000 10 --fit-range 200,3500 --observable 'mass[330,200,3500]'
