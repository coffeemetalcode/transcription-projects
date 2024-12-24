\version "2.24.3"
\include "english.ly"

doubleTimeOneHands = \drummode {
  cymc8 <sn hho> hho <sn hho> hho <sn hho> hho <sn hho> |
}

doubleTimeTwoHands = \drummode {
  hho8 <sn hho> hho <sn hho> hho <sn hho> hho <sn hho> |
}

doubleTimeThreeHands = \drummode {
  hho8 <sn hho> hho <sn hho> hho sn tomh tommh |
}

doubleTimeFeet = \drummode {
  bd4 r16 bd r8 bd4 r16 bd r8 |
}

doubleTimeThreeFeet = \drummode {
  bd4 r16 bd r8 bd4 r |
}

outroHands = \drummode {
  tomh4 toml sn toml |
}

outroFeet = \drummode {
  r8 bd r bd r bd r bd |
}

introHands = \drummode {
  \oneVoice
  \compressMMRests % move to \score
  R1*8 \bar "||" |
}

introFeet = \drummode { s1*8 }

verseOneHands = \drummode {
  \repeat volta 2 {
    \voiceOne
    r4 ss^\markup {"rim"} ss ss |
    \repeat percent 3 { ss4 ss ss ss | }
    ss4 ss ss ss |
  }
}

verseOneFeet = \drummode {
  \repeat volta 2 {
    \voiceTwo
    bd4 r2. |
    R1
    s1*2
    r2 r8 bd r bd |
  }
}

chorusOneHands = \drummode {
  \repeat percent 7 { r4 hhc ss hhc | }
  cymc4 \oneVoice r2. |
  R1 \bar "||" |
}

chorusOneFeet = \drummode {
  bd4 r2. |
  s1*6
  bd4 s2. |
  s1 \bar "||" |
}

verseTwoHands = \drummode {
  \repeat volta 2 {
    \voiceOne
    \doubleTimeOneHands
    % \repeat percent 4 {
    %   hho8 <sn hho> hho <sn hho> hho <sn hho> hho <sn hho> |
    % }
    \doubleTimeTwoHands
    s1*3^\markup {"nesting percent repeats inside a volta breaks the layout"}
    \alternative {
      \volta 1 {
        \doubleTimeTwoHands
      }
      \volta 2 {
        \doubleTimeThreeHands \bar "||"
      }
    }
  }
}

verseTwoFeet = \drummode {
  \repeat volta 2 {
    \doubleTimeFeet
    \doubleTimeFeet
    s1*3 |
    \alternative {
      \volta 1 {
        \doubleTimeFeet
      }
      \volta 2 {
        \doubleTimeThreeFeet
      }
    }
  }
}

chorusTwoHands = \drummode {
  cymc4 hhc16 hhc hhc hhc sn hhc hhc hhc hhc hhc hhc hhc |
  \repeat percent 2 {
    hhc16 hhc hhc hhc hhc hhc hhc hhc sn hhc hhc hhc hhc hhc hhc hhc |
  }
  hhc16 hhc hhc hhc hhc hhc hhc hhc sn hhc hhc8 toml r8 |
  cymc4 hhc16 hhc hhc hhc sn hhc hhc hhc hhc hhc hhc hhc |
  \repeat percent 2 {
    hhc16 hhc hhc hhc hhc hhc hhc hhc sn hhc hhc hhc hhc hhc hhc hhc |
  }
  cymc2 sn16 sn sn sn sn sn sn sn \bar "||" |
}

chorusTwoFeet = \drummode {
  bd4 bd r2 |
  bd4 bd r2 |
  s1 |
  bd4 bd r4. bd8 |
  bd4 bd r2 |
  bd4 bd r2 |
  s1 |
  bd4 r2. |
}

interludeHands = \drummode {
  \doubleTimeOneHands
  \repeat percent 3 { \doubleTimeTwoHands }
  \doubleTimeOneHands
  \repeat percent 2 { \doubleTimeTwoHands }
  \doubleTimeThreeHands
  cymc4 <hhc sn>8 hhc hhc hhc <hhc sn> hhc |
  hhc8 hhc <hhc sn> hhc hhc hhc <hhc sn> hhc |
  hhc8 hhc <hhc sn> hhc hhc hhc <hhc sn> hhc |
  hhc8 hhc <hhc sn> hhc hhc hhc sn sn |
  cymc4 hho <sn cymc> hho |
  \oneVoice
  \tuplet 3/2 { tommh4 toml sn } \tuplet 3/2 { bd4 toml toml } |
  \voiceOne
  cymc1 |
  \oneVoice
  hho4 hh hh hh8 toml16 toml | \bar "||"
}

interludeFeet = \drummode {
  \doubleTimeFeet
  \doubleTimeFeet
  s1*2 |
  \doubleTimeFeet
  \doubleTimeFeet
  s1 |
  \doubleTimeThreeFeet
  bd4 r bd8 bd r4 |
  bd8 bd r4 bd8 bd r4 |
  bd8 bd r4 bd8 bd r4 |
  bd8 bd r8 bd r bd r4 |
  bd4 r8 bd r2 |
  s1 |
  bd1 |
  s1 |
}

verseThreeHands = \drummode {
  \voiceOne
  r4 ss ss ss |
  ss4 <ss tommh>8 tommh ss4 <ss tomh>8 tomh |
  ss4 <ss toml>8 toml ss4 ss |
  \oneVoice
  ss ss ss ss |
  ss ss ss hho |
  \voiceOne
  tommh8 tomh toml sn tomh toml cymc^\markup { "choke" } \oneVoice r |
  \voiceOne
  \doubleTimeOneHands
  r8 sn sn cymc r sn sn cymc |
  r8 sn sn cymc r sn sn cymc |
  r8 <sn hho> hho <sn hho> hho <sn hho> hho <sn hho> |
  \doubleTimeTwoHands
  \doubleTimeThreeHands \bar "||"
  % Coda
  \repeat percent 3 {
    \outroHands
  }
  tomh4 toml sn sn8 sn |
  \repeat percent 3 {
    \outroHands
  }
  cymc1 | \bar "|."
}

verseThreeFeet = \drummode {
  bd4 r2. |
  R1 |
  r2. bd8 bd |
  s1*2 |
  r2. bd8 s |
  \doubleTimeFeet
  bd8 r4 bd8 r4. bd8 |
  r4. bd8 r4. bd8 |
  r4 r16 bd r8 bd4 r16 bd r8 |
  \doubleTimeFeet
  \doubleTimeThreeFeet
  \outroFeet
  s1*2 |
  r8 bd r bd r bd r4 |
  \outroFeet
  s1*2 |
  bd1 |
}
% hands

% feet