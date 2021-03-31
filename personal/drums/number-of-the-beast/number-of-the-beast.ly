\version "2.22.0"
\include "english.ly"

\include "number-of-the-beast-notes.ly"

\paper {
  #(set-paper-size "letter")
  #(define fonts
     (set-global-fonts
      #:roman "Times LT Std"
      #:sans "Helvetica LT Std"
      #:typewriter "Fira Sans"))
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
  title = "Number of the Beast"
  composer = "Words and Music by Bruce Dickenson?"
  arranger = \markup {
    \with-dimensions #'(0 . 40) #'(0 . 20)
    \epsfile #X #40 "../common/legend.eps"
  }
  tagline = ##f
}

\include "../common/hldrums.ly"

\score {
  % \override Score.RehearsalMark.outside-staff-horizontal-padding = #5
  <<
    \override Score.LyricText.font-size = #-1
    % \new Lyrics { \verseOneLyrics }
    % \new Lyrics { \verseTwoLyrics }
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