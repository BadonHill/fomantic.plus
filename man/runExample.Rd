% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/examples.R
\name{runFPlusExample}
\alias{runFPlusExample}
\title{Run Fomantic Plus Examples}
\usage{
runFPlusExample(
  example = NA,
  port = getOption("shiny.port"),
  launch.browser = getOption("shiny.launch.browser", interactive()),
  host = getOption("shiny.host", "127.0.0.1"),
  display.mode = c("auto", "normal", "showcase")
)
}
\arguments{
\item{example}{The name of the example to run, or \code{NA} (the default) to list the available examples.}

\item{port}{The TCP port that the application should listen on. If the port is not specified, and the shiny.port option is set (with options(shiny.port = XX)), then that port will be used. Otherwise, use a random port between 3000:8000, excluding ports that are blocked by Google Chrome for being considered unsafe: 3659, 4045, 5060, 5061, 6000, 6566, 6665:6669 and 6697. Up to twenty random ports will be tried.}

\item{launch.browser}{If true, the system's default web browser will be launched automatically after the app is started. Defaults to true in interactive sessions only.}

\item{host}{The IPv4 address that the application should listen on. Defaults to the shiny.host option, if set, or "127.0.0.1" if not.}

\item{display.mode}{The mode in which to display the example. Defaults to \code{showcase}, but may be set to normal to see the example without code or commentary.}
}
\value{
If \code{example = NA} then a list of the available examples will be shown, otherwise the selected
application will be rendered.
}
\description{
Run Fomantic Plus Examples
}
\examples{
if (interactive()) {
  runFPlusExample()

  # Fomantic UI Kitchen Sink
  runKitchenSink()
}

}
\seealso{
\code{\link[shiny]{runExample}}
}
