./bkg_bias.py --analyze-bias \
   --bias-files toys_mcBIAS_v4_pow/toys.root       --bias-labels pow \
   --bias-files toys_mcBIAS_v4_moddijet/toys.root  --bias-labels moddijet \
   --bias-files toys_mcBIAS_v4_expow2/toys.root    --bias-labels expow2 \
   --bias-files toys_mcBIAS_v4_invpow/toys.root    --bias-labels invpow \
   --bias-files toys_mcBIAS_v4_invpowlin/toys.root --bias-labels invpowlin \
   --bias-files toys_mcBIAS_v4_sumexp3/toys.root   --bias-labels sumexp3 \
   --no-use-custom \
   -O compare_all_mcNOBIAS_v1

