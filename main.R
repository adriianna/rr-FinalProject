#File main.R -- master project file for spectral analysis
source(here::here("src/functions/fcheckDateRange.R"))


# function(res, start, end) {
#   
#   plumber::include_rmd(rmarkdown::render(input = "./paper/spectral_analysis.Rmd",
#                             output_file = "spectral_analysis.html", output_dir = here::here("out"), quiet = TRUE, params = list(miny = start, maxy = end)), res, format = NULL);
#   
# }

#* @param start
#* @param end
#* @serializer contentType list(type="application/html")
#* @get /markdown
function(start, end, res)
{
  tmp <- here::here("out/spectral_analysis.html")
  rmarkdown::render(input = "./paper/spectral_analysis.Rmd", output_file = "spectral_analysis.html", output_dir = here::here("out"), output_format = "html_document", params = list(miny = start, maxy = end))
  
  
    plumber::include_html(tmp, res)
}

#* @param start
#* @param end
#* @get /hello
#* @html
function(start, end)
{
  checkDateRange(start,end)
}

