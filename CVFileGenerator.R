# install.packages("devtools")
devtools::install_github("nstrayer/datadrivencv")


datadrivencv::use_datadriven_cv(
  full_name = "Shelly Lachish",
  data_location = "https://docs.google.com/spreadsheets/d/1oHyUQ4dA_e5G2WHl8p2nszinrBz6gKxsR5Xve_P09Gs",
  #pdf_location = "https://github.com/nstrayer/cv/raw/master/strayer_cv.pdf",
  #html_location = "nickstrayer.me/cv/",
  #source_location = "https://github.com/nstrayer/cv"
)

?datadrivencv::use_datadriven_cv
