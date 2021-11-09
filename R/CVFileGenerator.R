#Need to install an older version of the icon package (now called icons) to get his package to work
remotes::install_github('mitchelloharawild/icons@v0.1.0')
devtools::install_github("nstrayer/datadrivencv")
#skip the updating of the icon package

#***********************
# Note if you regenerate the cv_printing_functions.r script you will need to change
#FROM: googlesheets4::sheets_deauth()
#TO:   googlesheets4::gs4_deauth()
# On line 32
#***********************

datadrivencv::use_datadriven_cv(
  full_name = "Shelly Lachish",
  data_location = "https://docs.google.com/spreadsheets/d/1oHyUQ4dA_e5G2WHl8p2nszinrBz6gKxsR5Xve_P09Gs",
  pdf_location = "https://github.com/shellylac/CV_datadrivencv/ShellyL_CV.pdf",
  html_location = "https://github.com/shellylac/CV_datadrivencv/",
  source_location = "https://github.com/shellylac/CV_datadrivencv"
)
