% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/navbarPage.R
\name{tab_panel}
\alias{tab_panel}
\title{Tab Panel}
\usage{
tab_panel(
  title,
  ...,
  value = title,
  icon = NULL,
  type = "bottom attached segment"
)
}
\arguments{
\item{title}{Display title for tab}

\item{...}{UI elements to include within the tab}

\item{value}{The value that should be sent when \code{\link{navbar_menu}} reports that this tab is selected.
If omitted and \code{\link{navbar_menu}} has an id, then the title will be used.}

\item{icon}{Optional icon to appear on the tab.
This attribute is only valid when using a \code{tab_panel} within a \code{\link{navbar_page}}.}

\item{type}{Change depending what type of tab is wanted. Default is \code{bottom attached segment}.}
}
\value{
A tab that can be passed to \code{\link{navbar_menu}}.
}
\description{
Create a tab panel
}
\examples{
navbar_menu(
  tab_panel("Plot", shiny::plotOutput("plot")),
  tab_panel("Summary", shiny::verbatimTextOutput("summary")),
  tab_panel("Table", shiny::tableOutput("table"))
)

}
\seealso{
\code{\link{navbar_menu}}
}
