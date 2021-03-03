\version "2.20.0"

\header {
  title = "Run to the Hills - snippets"
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

#(define hldrums '(
         (bassdrum		default		#f          -3)
         (snare			default   	#f           1)
         (hihat			cross     	#f           4)
         (halfopenhihat		cross     	"halfopen"   4)
         (openhihat	   	cross     	"open"       4)
         (pedalhihat      	xcircle   	"stopped"   -4)
         (hightom		default		#f	     3)
         (hightmidtom		default		#f	     2)
         (lowtom          	default   	#f          -1)))

intro = \drummode {
  \bar ".|:" <bd hh>16^\markup { \bold Intro } hh hh hh <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hho>8 tomfh |
  <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hho>8 tomfh |
  <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hho>8 tomfh |
  <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hh>16 hh hh hh <bd hho>8 tomfh \bar ":|." |
}

verse = \drummode {
  \tuplet 3/2 { <bd cymc>8 q q } r4^\markup { \bold Faster } r sn4^"flam" \bar "||" |
  <bd hh>16^\markup { \bold Verse } hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  \bar ".|:" <bd cymc>4 <bd sn>16 hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh \bar ":|.|:" |
}

chorus = \drummode {
  <bd cymc>4^\markup { \bold Chorus } <bd sn>16 hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh | \break
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd sn>8 sn16 sn <bd cymc>4 <bd sn>8 sn16 sn <bd cymc>4 | \break
  <bd cymc>4 <bd sn>16 hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh | \break
  <bd hh>16 hh hh hh <bd sn> hh hh hh <bd hh> hh hh hh <bd sn> hh hh hh |
  <bd sn>16 sn sn sn <bd tomh> tomh tomh tomh <bd tommh> tommh tommh tommh <bd toml> toml toml toml \bar ":|." |
}

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table hldrums)
    \new DrumVoice {
      \override Beam.concaveness = #10000
      \voiceOne
      \intro \break
      \verse \break
      \chorus \break
    }
  }
}
