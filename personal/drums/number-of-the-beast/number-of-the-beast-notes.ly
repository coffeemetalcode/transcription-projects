\version "2.22.0"
\include "english.ly"

%% Interlude One

interludeOneHands = \drummode {
  \time 4/4
  \repeat volta 4 {
  \mark \markup { \bold "Interlude 1" }
  hh4 <sn hh> hh <sn hh> |
  hh4 <sn hh> hh <sn hh> |
  hh4 <sn hh> hh <sn hh> |

  } \alternative {
    { <sn cymc>4 r8 q r4 q | }
    { hh4 <sn hh> hh8 sn sn cymc | %{ \bar "||" %} }
  }
}

interludeOneFeet = \drummode {
  \repeat unfold 3 { bd8 bd r4 bd 8 bd r4 | }
  r8 bd bd r bd bd r4 |
  bd8 bd r4 bd r8 bd |
}

%% Guitar Solo One

gSoloOneHands = \drummode {
  \repeat volta 4 {
    \mark \markup { \bold "Guitar Solo 1" }
    r4 <sn hh> r <sn hh> |
    hh4 <sn hh> hh8 sn sn cymc |
    r4 <sn hh> r <sn hh> |
  } \alternative {
    { hh4 <sn hh> hh8 sn sn cymc | }
    { hh4 <sn hh> sn8 sn sn sn | }
  }
}

gSoloOneFeet = \drummode {
  \repeat unfold 2 {
    r8 bd r4 bd8 bd r4 |
    bd8 bd r4 bd r8 bd |
  }
  <bd>8 bd r4 r2 |
}

%% Interlude Two

interludeTwoHands = \drummode {
  \mark \markup { \bold "Interlude 2" }
  \oneVoice R1 |
  r2 \voiceOne tomh8 tomh tomh tomh |
  \oneVoice R1 |
  r2 \voiceOne tommh8 tommh tommh cymc |
  r4 <sn hh> hh <sn hh> |
  hh4 <sn hh> hh sn8 cymc |
  \repeat unfold 2 { r4 <sn hh> hh sn8 cymc | }
}

interludeTwoFeet = \drummode {
  s1*3 |
  s2 r4. bd8 |
  r8 bd r4 bd8 bd r4 |
  bd8 bd r4 bd8 bd r bd |
  r8 bd r4 bd8 bd r bd |
  r8 bd r4 bd8 bd r bd |
}

%% Guitar Solo 2

gSoloTwoHands = \drummode {
  \repeat volta 4 {
    \mark \markup { \bold "Guitar Solo 2" }
    \repeat unfold 2 {
      r4 <sn hh> hh sn8 cymc |
    }
    r4 <sn hh> hh8 sn sn cymc |
    r8 sn sn cymc r sn sn cymc |
  }
  \repeat volta 2 {
    \repeat unfold 3 {
      r4 <sn hh> hh sn8 cymc |
    }
  } \alternative {
    { r4 sn8 cymc r4 sn8 cymc | }
    { r4 sn8 cymc r sn sn sn | \bar "||" }
  }
}

gSoloTwoFeet = \drummode {
  \repeat unfold 2 {
    r8 bd r4 bd8 bd r8 bd |
  }
  r8 bd r4 bd8 r4 bd8 |
  r4. bd8 r4. bd8 |
  \repeat unfold 3 {
    r8 bd r4 bd8 bd r bd |
  }
  r8 bd[ r bd] r bd[ r bd] |
  r8 bd[ r bd] r2 |
}

one = {
  \interludeOneHands
  \gSoloOneHands
  \interludeTwoHands
  \gSoloTwoHands
} 

two = {
  \interludeOneFeet
  \gSoloOneFeet
  \interludeTwoFeet
  \gSoloTwoFeet
}