\version "2.24.3"
\include "english.ly"

\include "./eleanor-rigby-drums-notes.ly"

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
  title = "Eleanor Rigby"
  composer = "Words and Music Paul McCartney and John Lennon"
  tagline = ##f
}

\score {
  \new DrumStaff <<
    \numericTimeSignature
    \set DrumStaff.drumStyleTable = #weinberg-drums-style
    \new DrumVoice {
      \override Beam.concaveness = #10000
      \introHands
      \verseOneHands
      \chorusOneHands
      \verseTwoHands
      \chorusTwoHands
      \interludeHands
      \verseThreeHands
    }
    \new DrumVoice {
      \override Beam.concaveness = #10000
      \introFeet
      \verseOneFeet
      \chorusOneFeet
      \verseTwoFeet
      \chorusTwoFeet
      \interludeFeet
      \verseThreeFeet
    }
  >>
}