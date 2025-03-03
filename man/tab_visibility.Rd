% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/navbarPage.R
\name{show_tab}
\alias{show_tab}
\alias{hide_tab}
\title{Show/Hide Tab}
\usage{
show_tab(session = shiny::getDefaultReactiveDomain(), id, target)

hide_tab(session = shiny::getDefaultReactiveDomain(), id, target)
}
\arguments{
\item{session}{The \code{session} object passed to function given to \code{shinyServer}.}

\item{id}{The id of the navbar object}

\item{target}{The tab value to toggle visibility}
}
\value{
Changes to the visibility of a tab in the shiny UI.
}
\description{
Dynamically show or hide a \code{\link{tab_panel}} or \code{navbar_menu}
}
\examples{
if (interactive()) {
  library(shiny)
  library(shiny.semantic)

  ui <- navbar_page(
    title = "App Title",
    id = "navbar",
    tab_panel(
      "Plot",
      action_button("hide", "Hide Table"),
      action_button("show", "Show Table"),
      value = "plot"
    ),
    tab_panel("Summary", value = "summary"),
    tab_panel("Table", value = "table")
  )

  server <- function(input, output, session) {
    observeEvent(input$hide, hide_tab(session, "navbar", "table"))
    observeEvent(input$show, show_tab(session, "navbar", "table"))
  }

  shinyApp(ui, server)
}

}
