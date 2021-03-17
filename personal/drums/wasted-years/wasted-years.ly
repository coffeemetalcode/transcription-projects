\version "2.22.0"
\include "english.ly"

\header {
  title = "Wasted Years"
  composer = \markup {
    \epsfile #X #25 "../common/legend.eps"
  }
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  top-margin = 0.75\in
  bottom-margin = 1\in
  left-margin = 0.75\in
  right-margin = 0.75\in
}

\include "../common/hldrums.ly"

%{ hi-hat riff 1 %}
hhRiffOne = \drummode {
  hhho16 hh hh hh hh hh hhho hh
  hh hh hh hh hhho hh hh hh |
  hh hh hhho hh hh hh hh hh
  hhho hh hh hh hhho hh hh hh |
}

introVOne = \drummode {
  % \repeat unfold 2 { \hhRiffOne }
  \hhRiffOne

  hhho16 hh hh hh hh hh hhho hh
  hh hh hh hh hhho hh hh hh |
  hh hh hhho hh hh hh hh hh
  hhho hh hh hh hhho8 hhho |

  cymc4 hh16 hh hhho hh
  hh hh hh hh hhho hh hh hh |
  hh hh hhho hh hh hh hh hh
  hhho hh hh hh hhho hh hh hh |

  hhho16 hh hh hh hh hh hhho hh
  hh hh hh hh hhho hh hh hh |
  hh hh hhho hh hh hh hh hh
  hhho hh hh hh cymc4 |

  \hhRiffOne

  hhho16 hh hh hh hh hh hhho hh
  hh hh hh hh hhho8 cymc |

  cymc4 r2. | r2. sn4^"flam" | \bar "||"
}

introVTwo = \drummode {
  r4^\markup { \bold Intro } bd r bd |
  r4 bd r bd |
  r4 bd r bd |
  r4 bd r2 |
  bd4 bd r bd |
  r4 bd r bd |
  r4 bd r bd |
  r4 bd r bd |
  bd4 r bd r |
  bd4 r bd r |
  bd4 r bd r8 bd |
  bd4 s2. | s2 r8 bd r4 |
}

one = { \introVOne }
two = { \introVTwo }

\score {
  \new DrumStaff <<
    \numericTimeSignature
    \set DrumStaff.drumStyleTable = #(alist->hash-table hldrums)
    \new DrumVoice {
      \override Beam.concaveness = #10000
      \voiceOne \one
    }
    \new DrumVoice {
      \override Beam.concaveness = #10000
      \voiceTwo \two
    }
  >>
}
