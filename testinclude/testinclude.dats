#include "share/atspre_staload.hats"
//staload "./SATS/lib.sats"
staload "libats/ML/SATS/string.sats"
staload "libats/ML/DATS/string.dats"

%{^
#include "./cbits/lib.c"
%}

extern
fun doStuff (x: int, y: int): int = "ext#doStuff"


implement main0() = (
  println!(tostring_int(doStuff(3,5)));
)