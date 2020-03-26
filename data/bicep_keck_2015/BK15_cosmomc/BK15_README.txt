BICEP2/Keck Array October 2018 Data Products
BICEP2/Keck Array X: Constraints On Primordial Gravitational Waves using Planck, WMAP, and New BICEP2/Keck Observations through the 2015 Season
http://bicepkeck.org/

File: BK15_README.txt
Date: 2018-10-18

This README file gives an overview of the BK15 data release products for CosmoMC.
Additional information can be found in the header comments of each file.

Contents of this tarball (file locations as normally organized in CosmoMC):
1. data/BK15/BK15*: These files contain the data (bandpowers, bandpower covariance, and ancillary data) needed to
   use the BK15 dataset in CosmoMC (including WMAP and Planck polarization data in the BICEP field).
   BK15_dust.dataset is the main file. Furthur information can be found in comments therein.
2. data/BK15/windows/: This directory contains bandpower window functions.
3. data/BK15/bandpass*: These files contain instrument frequency response.
4. batch3/BK15.ini: This file sets the baseline data selection and foreground nuisance parameters used in BK-X.
5. batch3/BK15only.ini: For CosmoMC runs where you are using *only* the BK15 data set, you should include it via
   this file, which sets scalar cosmological parameters to nominal values. These parameters are otherwise not
   well constrained by BK15 data. If you are running chains using BK15 alongside CMB TT data or similar, then it
   is not necessary to fix these parameters.
6. batch3/BK15/BK15_01_baseline.ini, BK15_01_baseline_dist.ini: These files run CosmoMC and getdist to recompute
   the results of the BK15 baseline analysis, as seen in Figure 4 of BK-X.
7. batch3/BK15/BK15_02_freebdust.ini, BK14_03_freebsync.ini, ...: These files run CosmoMC and getdist to
   recompute results for some of the alternate likelihoods seen in Figures 16, 18, 21 of BK-X.
8. planck_covmats/BK15.covmat: This file is included by the various ini files found in batch2/BK15/. Using it
   should speed up the convergence of your chains.
9. source/CMB_BK_Planck.f90: This file encodes the foreground model used in BK-X. It is intended to be compiled 
   and run as part of CosmoMC, but may also be a useful reference for technical details of the model. It was 
   originally distributed with the BICEP2/Keck/Planck joint result and data release. The addition of foreground
   decorrelation parameters in BK-X breaks backwards compatibility. If you want to run older datasets (BKP, BK14)
   with the new model, then you should get an up-to-date copy of CosmoMC via Antony Lewis' github: 
   https://github.com/cmbant/CosmoMC
