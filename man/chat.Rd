% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chat.R
\name{chat}
\alias{chat}
\title{Chat with OpenAI's GPT-3.5-turbo model HEJ MED DIG IGEN}
\usage{
chat(data, prompt, model = "gpt-3.5-turbo")
}
\arguments{
\item{data}{A data frame containing the study details. Each row should represent a study and must have 'title' and 'abstract' columns.}

\item{prompt}{A string that will be prepended to the study details to form the prompt for the model.}

\item{model}{A string specifying the model to use. Default is "gpt-3.5-turbo".}
}
\value{
A tibble with the original study details and the model's response.
}
\description{
This function takes a data frame of study details, constructs a prompt for each study, and sends it to OpenAI's GPT-3.5-turbo model for a response.
The function returns a tibble with the original study details and the model's response.
}
\examples{
\dontrun{
prompt <- "Is this study about a Functional Family Therapy (FFT) intervention?"
loaded_objects <- load("./data/filges2015_dat_modified.rda")
data <- get(loaded_objects)
chat(data, prompt)
}
}
