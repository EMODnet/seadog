#' Create a data product checklist in a GitHub issue
#'
#' @param repo GitHub repository of the data product e.g. `"maelle/seadog"`
#'
#' @export
#'
advise_author <- function(repo = NULL) {
  repo <- obtain_repo(repo)

  checklist <- brio::read_lines(
    system.file("author-checklist.md", package = "seadog")
  )

  post_issue(repo, checklist, name = "author")
}

#' @rdname advise_author
#' @export
advise_reviewer <- function(repo = NULL) {
  repo <- obtain_repo(repo)

  checklist <- brio::read_lines(
    system.file("reviewer-checklist.md", package = "seadog")
  )

  post_issue(repo, checklist, name = "reviewer")
}
