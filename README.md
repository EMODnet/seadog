
# seadog

<!-- badges: start -->
<!-- badges: end -->

The goal of seadog is to hold checklists for [EMODnet data products](https://github.com/EMODnet/EMODnet-Biology-Project-Template-cookiecutter), and to facilitate usage of those checklists.

## Installation

You can install the development version of seadog from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("maelle/seadog")
```

Then check your [GitHub credentials situation](https://usethis.r-lib.org/articles/git-credentials.html).
On Linux also read [this blog post by Danielle Navarro](https://blog.djnavarro.net/posts/2021-08-08_git-credential-helpers/).

## Example

Create a data product checklist in a GitHub issue:

``` r
seadog::advise_author()
```

Or 

``` r
seadog::advise_reviewer()
```

## Checklists for direct use

* [authors](inst/author-checklist.md)
* [reviewers](inst/reviewer-checklist.md)

## Further information

Some information containing the metadata required:
* The EMODnet-Biology submission form: https://www.emodnet-biology.eu/contribute
* The EMODnet Ingestion submission system: https://submission.emodnet-ingestion.eu/
* This guide (slide 4): https://www.emodnet-biology.eu/sites/emodnet-biology.eu/files/public/tutorials/Guidance_How_to_share_biodiversity_data.pdf
