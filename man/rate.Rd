\name{rate}
\alias{rate}
\alias{rate<-}
\alias{setRate}
\title{ The Sampling Rate }
\description{
  Get or set the sampling rate (number of samples per second) of a Sample object or a wav file.
}
\usage{rate(s)
rate(s) <- r
setRate(s,r)
}
\arguments{
  \item{s}{ a Sample object, or a string giving the name of a wav file. }
  \item{r}{ an integer between 1000 and 48000 giving the sampling rate. }
}
\details{
The replacement form can be used to reset the sampling rate. Here, filenames are not accepted.

Note that changing the sampling rate of a Sample object affects the waveform of the sample.
}
\value{
  For \code{rate}, the sampling rate (number of samples per second) of the sample.

  For \code{setRate}, a Sample object with the new sampling rate.
}
\author{ Matthias Heymann }

\note{ Common sampling rates are between 8000 and 44100 (CD quality). The sampling rate of DAT recorders is 48000. Not every rate is guaranteed to be supported by every wav file player.

Future versions may use a different algorithm for sampling rate conversion to achieve a better sound quality for the returned sample.
}

\seealso{ \code{\link{fitSampleParameters}}, \code{\link{pitch}} }

\examples{\dontrun{s <- Sine(440,1,rate=44100)
rate(s)  # 44100
play(s)
print(s)
rate(s) <- 8000
play(s)  # s has worse quality now (noise and additional high frequencies)
print(s) # but uses less memory}
}
\keyword{ attribute }