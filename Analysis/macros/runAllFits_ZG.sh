## parallel --ungroup -j 1 './combine_maker.sh full_analysis_spring15_7415v2_sync_v6 --data-file ~/public/workspace/exo/full_analysis_spring15_7415v2_sync_v5_data_ecorr/output.root --lumi 2.4 --fit-name cic2 --plot-fit-bands --rescale-signal-to 1e-3  --parametric-signal ~/eos/cms/store/user/crovelli/WSdiphotonConSmearings/nominalWSwithSmear_k{}_m1000to4900.root --parametric-signal ~/eos/cms/store/user/crovelli/WSdiphotonConSmearings/nominalWSwithSmear_k{}_m500to998.root  --parametric-signal-xsection xsections.json --parametric-signal-acceptance  acceptance_pu.json --load lumi.json  --compute-fwhm --generate-ws-bkgnbias --only-coups {} --label approval --minos-bands' ::: 001 005 007 01 015 02

#./combine_maker_ZG.sh EventYields_v0_2016v1 --luminosity 0.589 \
#./combine_maker_ZG.sh EventYields_v0_2p7fb --luminosity 2.7 \
#./combine_maker_ZG.sh EventYields_v0_stitchPt --luminosity 2.1 \
#./combine_maker_ZG.sh EventYields_v0_2016v3 --luminosity 2.1 \
#./combine_maker_ZG.sh EventYields_v0_10fb_shilpi --luminosity 10 \
#./combine_maker_ZG.sh EventYields_v0_10fb --luminosity 10 \
#./combine_maker_ZG.sh EventYields_v0_2016v5 --luminosity 4.0 \
#./combine_maker_ZG.sh EventYields_v0_2016v6 --luminosity 12.9 \
./combine_maker_ZG.sh EventYields_v0_eth74X --luminosity 2.7 \
    --fit-name ${1:-fit_em} \
    --fit-background \
    --load combine_maker_ZG.json \
    --generate-signal-dataset \
    --generate-ws-bkgnbias \
    --generate-datacard \
    --minos-bands \
    --plot-fit-bands  \
    --label       w0p014 \
    --signal-width 0p014 \
    --redo-input \
    --doubleCB-signal \
    --compute-fwhm \
    --saveas png,pdf,eps,root,C \
    --signal-scalefactor-forpdf 1

#./combine_maker_ZG.sh EventYields_v0_eth74X --luminosity 2.7 \
#./combine_maker_ZG.sh EventYields_v0_76Xconvsafe --luminosity 2.7 \
    #--plot-blind 300,3000 \
    #--fast-bands \
    #--label       w5p6 \
    #--signal-width 5p6 \
    #--mc-data \
    #--gaussian-signal \
    #--no-use-custom-pdfs \

### parallel --ungroup './splitallcards.sh full_analysis_spring15_7415v2_sync_v5_data_ecorr_cic2_default_shapes_approval_lumi_2.4 {}' ::: EBEB EBEE

## ./combineall.sh input_8TeV_cic1_default_shapes_combination_pcorr_lumi_19.6 001 -M ProfileLikelihood --pvalue --significance  --hadd  &
## ./combineall.sh input_8TeV_cic1_default_shapes_combination_pcorr_lumi_19.6 001 -M Asymptotic --run both   --hadd  &


wait

