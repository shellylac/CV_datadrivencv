library(here)
# This script builds both the HTML and PDF versions of your CV

# Knit the HTML version
rmarkdown::render(here("R","cv_MyFormat.rmd"),
                  params = list(pdf_mode = FALSE),
                  output_file = here("cv_versions" , "ShellyL_CV.html"))

# rmarkdown::render(here("R","cv_MyFormat_csiro.rmd"),
#                   params = list(pdf_mode = FALSE),
#                   output_file = here("cv_versions" , "ShellyL_CV_csiro.html"))

# Knit the PDF version to temporary html location -

#* note - sometimes the pdf version goes over to another page
#* quickest way to fix it is to temporarily change the line height
#* @ line 7 in the custom css file 

tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render(here("R","cv_MyFormat.rmd"),
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# 
# rmarkdown::render(here("R","cv_MyFormat_csiro.rmd"),
#                   params = list(pdf_mode = TRUE),
#                   output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = here("cv_versions", "ShellyL_CV.pdf"))

# pagedown::chrome_print(input = tmp_html_cv_loc,
#                        output = here("cv_versions", "ShellyL_CV_csiro.pdf"))
