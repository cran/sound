\name{Ops.Sample}
\alias{Ops.Sample}
\alias{sum.Sample}
\alias{prod.Sample}
\title{ Basic Operations for Sample objects }
\description{
These functions apply the basic operations pointwise to the waveforms of the samples.
}
\usage{s1 + s2
s1 - s2
s1 * s2
const * s
s  * const
s  / const
sum.Sample(s1, s2, ...)
prod.Sample(s1, s2, ...)
}
\arguments{
  \item{s1, s2, \dots}{ Sample objects, or strings giving the name of wav files. }
  \item{const}{ a double. }
}
\details{
The sum of two sample objects corresponds to the sound when both samples are played at a time. The product of two samples causes an effect called ringmodulation, but it can also be used to add some vibrato to a sound (see the examples).

If the samples have different sample parameters (bits, rate and channels), the system uses the command \code{\link{fitSampleParameters}} to adjust them before the waveforms are combined.

Be careful to make sure that the resulting waveform does not exceed the interval [-1,1] when it is played or saved to disk, otherwise you will lose information and hear cracks in the sound. To avoid this, you can use \code{const * s} or the \code{\link{normalize}} command.

In \code{prod} and \code{sum} also the names of wavefiles can be used. Other forms like \code{s1+s2} do not accept filenames as arguments. If the first argument \code{s1} is a filename, the explicit forms \code{sum.Sample} and \code{prod.Sample} must be used.
}

\value{
  a Sample object. 
}

\author{ Matthias Heymann }

\seealso{ \code{\link{normalize}}, \code{\link{center}} }

\examples{\dontrun{s1 <- Sine(440,1)
s2 <- Sine(220,1)
play((s1+s2)/2) # both samples at a time

play(Sine(440,1)*Sine(5,1)) # vibrato}
}
\keyword{ manip }