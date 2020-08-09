
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cv

RMarkdown code for building CV and resumes from education, experience,
and awards stored as CSV files and publications stored as BibTeX file.
Code depends on vitae package. Template is combination of vitae::hyndman
and template by Steven Miller
(<http://svmiller.com/blog/2016/03/svm-r-markdown-cv/>).

# Example

``` r
# Job titles
job.titles <- read_csv("data/job-titles.csv",
                      locale = locale(encoding = 'ISO-8859-1'),
                      col_types = cols(
                        begin = col_date("%m/%d/%y"),
                        end = col_date("%m/%d/%y")
                        )
)

# Job descriptions
job.descriptions <- read_csv("data/job-descriptions.csv",
                      locale = locale(encoding = 'ISO-8859-1')
)
#> Parsed with column specification:
#> cols(
#>   jobId = col_double(),
#>   position.desc = col_character(),
#>   employer.desc = col_character(),
#>   category = col_character(),
#>   descId = col_character(),
#>   accomplishments = col_character()
#> )

# Experience section
job.titles %>% 
  left_join(job.descriptions) %>% 
  vitae::detailed_entries(
    what = position,
    when = as.character(
      glue("{year(begin)} - {if_else(!is.na(end), as.character(year(end)), 'present')}")),
    with = employer,
    where = glue("{city}, {region}, {country}"),
    why = accomplishments) %>% 
  glimpse()
#> Joining, by = "jobId"
#> Rows: 7
#> Columns: 5
#> Groups: what, when, with, where [7]
#> $ what  <chr> "Data Scientist", "Graduate Research Assistant", "Ph.D. Student…
#> $ when  <chr> "2016 - present", "2012 - 2016", "2014 - 2016", "2011 - 2012", …
#> $ with  <chr> "University of Nebraska-Lincoln", "University of Florida", "ONE…
#> $ where <glue> "Lincoln, Nebraska, US", "Gainesville, Florida, US", "Palaisea…
#> $ why   <list> [<"Developed new method to predict customer retention and purc…
```
