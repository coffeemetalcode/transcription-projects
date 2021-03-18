\version "2.22.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
  #(define fonts
     (set-global-fonts
      #:roman "Times LT Std"
      #:sans "Helvetica LT Std"
      #:typewriter "Fira Sans"
      ))
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  top-margin = 0.75\in
  bottom-margin = 1\in
  left-margin = 0.75\in
  right-margin = 0.75\in

  bookTitleMarkup = \markup \fill-line {
    % \with-dimensions #'(0 . 0) #'(0 . 0)
    \column {
      \sans \huge \larger \larger \larger \larger \larger \bold
      \fromproperty #'header:title
      \sans \smaller
      \fromproperty #'header:composer
    }
    \column {
      \fromproperty #'header:arranger
    }
  }
}

\header {
  title = "Wasted Years"
  composer = "Words and Music by Adrian Smith"
  arranger = \markup {
    \with-dimensions #'(0 . 35) #'(0 . 12.75)
    \epsfile #X #35 "../common/legend.eps"
  }
  tagline = ##f
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

  cymc4 r2. | \break
  r2. sn4^"flam" %{ | \bar "||" %}
}

introVTwo = \drummode {
  \mark \markup { \bold Intro }
  r4 bd r bd |
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

verseVOne = \drummode {
  \repeat volta 2 {
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh hh <sn hh> q hh |
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh hh <sn hh> hh hh |
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    r8 <tomh tommh>^"flam" r4 <tomh tommh>8^"flam" tomh16 tommh r4 |
    r4. <sn cymc>8 r4 q |
    r8 tomh tommh tommh toml4 sn^"flam" |
    cymc4 <sn hh>8 hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh hh hh <sn hho>4 |
    hh8 hh <sn hh> hh hh hh <sn hh> hh |
    hh8 hh <sn hh> hh r sn sn4 |
    sn4 r8 <sn cymc> r4 <sn hho> |
  }
  \alternative {
    { r8 sn r8. tommh16 tommh8 toml sn4 | }
    { r8 sn r8. tommh16 tommh8 toml sn4 | \bar "||" }
  }
}

verseVTwo = \drummode {
  %% Verse marking should be above the lyrics
  \mark \markup { \bold Verse } 
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
}

one = { \introVOne \verseVOne }
two = { \introVTwo \verseVTwo }

verseOneLyrics = \lyricmode {
  \repeat unfold 12 { 1 | }
  2. "1. From"8 the |
  coast4 of8 gold 8 2 |
  2 8 a -- cross the | \break
  sev8 -- en4 seas8 2 |
  2 4. I'm8 |
  trav4 -- ʼlinʼ8 on8 2 | \break
  1 |
  far4 and8 wide.8 2 |
  2 4. And8 | \break
  now8 it4 seems8 2 |
  2 8 Iʼm just a |
  strang4 -- er8 to8 8 my4 -- self.8 | \break
  2 8 All of the |
  things4 I8 some8 -- times4 do,4 |
  2 8 it8 is -- nʼt |
  me8 but4 some8 -- one4 else. |
  2 4. "2. I"8 |
}

verseTwoLyrics = \lyricmode {
  \repeat unfold 13 { 1 | }
  close4 my8 eyes8 2 |
}

\score {
  <<
    \override Score.LyricText.font-size = #-1
    \new Lyrics { \verseOneLyrics }
    \new Lyrics { \verseTwoLyrics }
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
  >>
}
