\name{WavPlayer}
\alias{WavPlayer}
\alias{findWavPlayer}
\alias{setWavPlayer}
\title{ Set or Get the System Command for Playing WAV Files }
\description{
  \code{findWavPlayer} returns the most common system commands on your OS for playing wav files.

  \code{WavPlayer} returns the command that is currently used by \code{\link{play}}.

  \code{setWavPlayer} is used to define the command to be used by \code{\link{play}}.
}
\usage{findWavPlayer()
WavPlayer()
setWavPlayer(command=NULL)
}
\arguments{
  \item{command}{ a vector of character strings giving the command to be used as \code{"command wavfile.wav"}. If it contains more than one string, the commands are tested one after the other, and the first one that works properly will be used for future calls of the \code{\link{play}} command. If \code{command=NULL},the command \code{findWavPlayer()} is used to determine the standard commands for your system. }
}
\details{ The \code{\link{play}} command makes a system call of the form \code{"}command\code{ }wavfile\code{.wav"}, where 'command' is the string returned by \code{WavPlayer()}.

The default commands are \code{'mplay32 /play'} (calling the Windows media player) for Win32-systems and \code{'play'} and \code{'playwave'} for Linux systems. Other commands will be added in future versions of this package.

While the Windows Media player is included in the standard Windows installation, playwave might have to be installed manually. Under RedHat Linux playwave is part of the SDL\_mixer package. To download it, go to \url{http://www.libsdl.org/projects/SDL_mixer}.

But any other program that provides a system call of the above form to play wav files is also fine. Please report additional play commands to the author (send an email to \email{mail@MatthiasHeymann.de}) so that they can be recognized automatically in future versions of this package.

\code{setWavPlayer} is called directly after loading the package.

When \code{setWavPlayer} is called, it tries to play an empty wav file, using the new command(s). If it fails, no changes are made.
}
\value{
  \code{WavPlayer} returns the wav play command that is currently used, or \code{NULL}, if none is selected yet.

  \code{findWavPlayer} returns the default commands for your system, or \code{NULL}, if no command is known for your system.
}
\author{ Matthias Heymann}

\seealso{ \code{\link{play}} for playing Sample objects or wav files. }

\examples{\dontrun{
setWavPlayer("playwave")
# tries to set the command "playwave wavfile.wav" as the 
# preference for playing wav files with the play command.
# If successful,
WavPlayer()
# returns the string "playwave" afterwards.
}}
\keyword{ sysdata }