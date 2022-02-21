obtain_repo <- function(repo) {
  if (is.null(repo)) {
    remotes <- gert::git_remote_list()
    origin <- remotes[remotes$name == "origin",]

    no_origin <- (nrow(origin) == 0)
    no_github <- !grepl("github\\.com", origin[["url"]])
    if (no_origin || no_github) {
      rlang::abort(
        c(
          x = "Could not identify a GitHub repo.",
          i = "Use the `repo` argument e.g. `advise_author(repo = 'maelle/seadog')` or use the checklists directly."
        )
      )
    }

    url <- origin[["url"]]
    url <- sub("\\.git$", "", url)
    url <- sub("^https://github.com", "", url)
    repo <- sub("^git@github.com:", "", url)
    return(repo)
  }
}

post_issue <- function(repo, checklist, name) {
  issue <- gh::gh(
    sprintf("POST /repos/%s/issues", repo),
    title = sprintf("EMODnet data product %s checklist", name),
    body = paste0(checklist, "\n", collapse = "")
  )

  utils::browseURL(issue$html_url)
}
