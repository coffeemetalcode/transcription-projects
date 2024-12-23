\version "2.22.0"

\header {
  tagline = ##f
}

#(set-global-staff-size 22.45)

#(set! paper-alist
  (cons '("drum legend" . (cons (* 1.75 in) (* 0.81 in))) paper-alist))

\paper {
  #(set-paper-size "drum legend")
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
  indent = 0.0\in
  top-margin = 0.0625\in
  bottom-margin = 0\in
  left-margin = 0\in
  right-margin = 0\in
}

\include "hldrums.ly"

legend = \drummode {
  \time 2/4
  <hhp bd toml sn tomh hh>4 <ss tommh cymr cymc>
}

\score {
  \new DrumStaff \with {
    \remove "Time_signature_engraver"
    \remove "Stem_engraver"
  }
  {
    \numericTimeSignature
    \override Staff.Stem.stencil = ##f
    \set DrumStaff.drumStyleTable = #(alist->hash-table hldrums)
    \new DrumVoice {
      \legend
    }
  }
}