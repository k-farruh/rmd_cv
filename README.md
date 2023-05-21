
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CV

RMarkdown code for building CV and resumes from education, experience,
accomplishment, project and skills stored as CSV files and publications
stored as BibTeX file. Code depends on vitae package. Template is
combination of vitae::hyndman and template by Steven Miller
(<http://svmiller.com/blog/2016/03/svm-r-markdown-cv/>).

## Example

``` r
if (!require(tidyverse)) {install.packages("tidyverse")}
if (!require(vitae)) {install.packages("vitae")}
#> Loading required package: vitae
#> 
#> Attaching package: 'vitae'
#> The following object is masked from 'package:stats':
#> 
#>     filter
folder_path = "input/data"
# Experience section
df_experience <- read_csv(file.path(folder_path, "experience.csv"))
#> Parsed with column specification:
#> cols(
#>   title = col_character(),
#>   unit = col_character(),
#>   startMonth = col_character(),
#>   startYear = col_double(),
#>   endMonth = col_character(),
#>   endYear = col_double(),
#>   where = col_character(),
#>   detail = col_character()
#> )

df_experience %>% 
  detailed_entries(
  with = title,
  what = unit,
  why = detail,
  when = glue::glue("{startMonth} {startYear} --> {endMonth} {endYear}",.na = ""),
  where = where
  )
```

# Projects

RMarkdown code for building projects with reveal.js which can be used to
create yet another style of HTML5 slides based on the JavaScript library
reveal.js.
