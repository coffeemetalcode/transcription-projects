% Lily was here -- automatically converted by midi2ly from elenor-rigby.mid
\version "2.24.3"

\include "../../../../common/ly/hldrums.ly"

\layout {
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
    \remove Rest_engraver
    \consists Completion_rest_engraver
  }
}

trackAchannelA = {
  
  % [COPYRIGHT_NOTICE] (C) hydrogen 2024
  
  \set Staff.instrumentName = "Untitled Song"
  
  \tempo 4 = 145 
  
  \time 4/4 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  \skip 16*1441 
}

trackBchannelB = \relative c {
  \voiceTwo
  b,16 r8. b16 r8. b16 r8. b16 r8. 
  | % 2
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 3
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 4
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 5
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 6
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 7
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 8
  b16 r8. b16 r8. b16 r8. b16 r8. 
  | % 9
  b16 r8. b16 r16*11 
  | % 10
  c16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 11
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 12
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 13
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 14
  cis16 r8. cis16 r8. cis16 r16 c r16 cis r16 c r16 
  | % 15
  c r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 16
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 17
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 18
  cis16 r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 19
  cis16 r8. cis16 r8. cis16 r16 c r16 cis r16 c r16 
  | % 20
  c r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 21
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 22
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 23
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 24
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 25
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 26
  c16 r8. fis16 r8. cis16 r8. fis16 r8. 
  | % 27
  <c'' c,, >16 r16*15 
  | % 28
  <c,, fis a' >16 r16 <d fis > r16 fis c <d fis > r16 <c fis > 
  r16 <d fis > r16 fis c <d fis > r16 
  | % 29
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 30
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 31
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 32
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 33
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 34
  <c fis a' > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 35
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 36
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 37
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 38
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 39
  <c fis > r16 <d fis > r16 fis c <d fis > r16 c r16 d r16 a' 
  r16 f r16 
  | % 40
  <a' fis, c > fis, fis fis <fis c > fis fis fis d fis fis fis 
  fis fis fis fis 
  | % 41
  <fis c > fis fis fis <fis c > fis fis fis d fis fis fis fis 
  fis fis fis 
  | % 42
  <fis c > fis fis fis <fis c > fis fis fis d fis fis fis fis 
  fis fis fis 
  | % 43
  <fis c > fis fis fis <fis c > fis fis fis d fis fis fis r8 c16 
  r16 
  | % 44
  <a'' fis, c > fis, fis fis <fis c > fis fis fis d fis fis fis 
  fis fis fis fis 
  | % 45
  <fis c > fis fis fis <fis c > fis fis fis d fis fis fis fis 
  fis fis fis 
  | % 46
  <fis c > fis fis fis <fis c > fis fis fis d fis fis fis fis 
  fis fis fis 
  | % 47
  <c cis' > r16*7 d16 d d d d d d d 
  | % 48
  <c fis a' > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 49
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 50
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 51
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 52
  <c fis a' > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 53
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 54
  <c fis > r16 <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > 
  r16 fis c <d fis > r16 
  | % 55
  <c fis > r16 <d fis > r16 fis c <d fis > r16 c r16 d r16 a' 
  r16 f r16 
  | % 56
  <c fis > r16 fis r16 <d fis > r16 fis r16 <c fis > r16 fis 
  r16 <d fis > r16 fis r16 
  | % 57
  <c fis > r16 fis r16 <d fis > r16 fis r16 <c fis > r16 fis 
  r16 <d fis > r16 fis r16 
  | % 58
  <c fis > r16 fis r16 <d fis > r16 fis r16 <c fis > r16 fis 
  r16 <d fis > r16 fis r16 
  | % 59
  <c fis > r16 fis r16 <d fis > r16 fis r16 <c fis > r16 fis 
  r16 <d fis > r16 <fis d > r16 
  | % 60
  <c cis' > r16*5 c16 r16 <d a'' > r16*7 
  | % 61
  a'16 r4*80/192 f16 r4*80/192 d16 r4*80/192 c16 r16. f16 r4*88/192 f16 
  r4*80/192 
  | % 62
  <c cis' >16 r16*15 
  | % 63
  ais'16 r8. ais16 r8. ais16 r8. ais16 r16 f f 
  | % 64
  c r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 65
  cis16 r8. <cis b' >16 r16 b' r16 cis, r8. <cis a' >16 r16 a' 
  r16 
  | % 66
  cis, r8. <cis f >16 r16 f r16 cis r8. <cis c >16 r16 c r16 
  | % 67
  cis r8. cis16 r8. cis16 r8. cis16 r8. 
  | % 68
  cis16 r8. cis16 r8. cis16 r8. ais'16 r8. 
  | % 69
  b16 r16 a r16 g r16 d r16 a' r16 g r16 <c, d' > r8. 
  | % 70
  <c'' c,, fis >16 r16 <d,, fis > r16 fis c <d fis > r16 <c fis > 
  r16 <d fis > r16 fis c <d fis > r16 
  | % 71
  c r16 d r16 d r16 <c c'' > r8. d16 r16 d r16 <c a'' > r8. d16 
  r16 d r16 <c a'' > r8. d16 r16 d r16 <c cis' > r8. 
  | % 73
  <d fis >16 r16 fis c <d fis > r16 <c fis > r16 <d fis > r16 fis 
  c <d fis > r16 <c fis > r16 
  | % 74
  <d fis > r16 fis c <d fis > r16 <c fis > r16 <d fis > r16 fis 
  c <d fis > r16 <c fis > r16 
  | % 75
  <d fis > r16 fis c <d fis > r16 c r16 d r16 a' r16 f r16 <a' fis, c > 
  fis, 
  | % 76
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 77
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 78
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 79
  fis fis <fis c > fis fis fis d fis fis fis r8 c16 r16 <a'' fis, c > 
  fis, 
  | % 80
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 81
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 82
  fis fis <fis c > fis fis fis d fis fis fis fis fis fis fis 
  <fis c > fis 
  | % 83
  fis fis <fis c > fis fis fis d fis fis fis r8 c16 r16 a' r16 
  | % 84
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 a' r16 
  | % 85
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 a' r16 
  | % 86
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 a' r16 
  | % 87
  c, r16 f r16 c r16 d r16 f r16 d r16 d r16 a' r16 
  | % 88
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 a' r16 
  | % 89
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 a' r16 
  | % 90
  c, r16 f r16 c r16 d r16 c r16 f r16 c r16 <c cis' > 
}

trackBchannelBvoiceB = \relative c {
  \voiceOne
  r4*32824/192 f,16 r16*575 f16 r16*63 f16 
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
>>


\score {
  \new DrumStaff <<
    \set DrumStaff.drumStyleTable = #(alist->hash-table hldrums)
    \set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  % \midi {}
}
