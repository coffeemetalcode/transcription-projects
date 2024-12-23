\version "2.24.3"
\include "english.ly"

intro = \drummode {
  R1*8 \bar "||"
}

verseOne = \drummode {
  \repeat volta 2 {
    bd4 sn^\markup {"rim"} sn sn |
    sn sn sn sn |
    sn sn sn sn |
    sn sn sn sn |
    sn sn sn8 bd sn bd \bar "||" |
  }
}

chorusOne = \drummode {
  bd4 hh sn hh |
  bd4 hh sn hh |
  bd4 hh sn hh |
  bd4 hh sn hh |
  bd4 hh sn hh |
  bd4 hh sn hh |
  bd4 hh sn hh |
  <bd cymc>4 r2. |
  R1 \bar "||" |
}

verseTwo = \drummode {
  \repeat volta 2 {
    % \bar ".|:"
    <bd cymc>8 <sn hho> hho16 bd <sn hho>8
    <bd hho> <sn hho> hho16 bd <sn hho>8 |
    <bd hho>8 <sn hho> hho16 bd <sn hho>8
    <bd hho> <sn hho> hho16 bd <sn hho>8 |
    <bd hho>8 <sn hho> hho16 bd <sn hho>8
    <bd hho> <sn hho> hho16 bd <sn hho>8 |
    <bd hho>8 <sn hho> hho16 bd <sn hho>8
    <bd hho> <sn hho> hho16 bd <sn hho>8 |
    <bd hho>8 <sn hho> hho16 bd <sn hho>8
    <bd hho> <sn hho> hho16 bd <sn hho>8 |
    \alternative {
      \volta 1 {
        <bd hho>8 <sn hho> hho16 bd <sn hho>8
        <bd hho> <sn hho> hho16 bd <sn hho>8 |
      }
      \volta 2 {
        <bd hho>8 <sn hho> hho16 bd <sn hho>8
        bd8 sn tomh tommh \bar "||" |
      }
    }
  }
}

chorusTwo = \drummode {
  
}
