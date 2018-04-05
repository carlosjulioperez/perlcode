use strict; #pragma
use warnings;
use feature qw(say);

#In-place array modifications
my @stack = ("Fred", "Eileen", "Denise", "Charlie",);
say @stack;

#pop extracts and returns the final statement of the array
say pop @stack; #Charlie
say @stack; #FredEileenDenise

#push appends extra elements to the end of the array
push @stack, "Bob", "Alice";
say @stack; #FredEileenDeniseBobAlice 

#shift extracts and returns the first element of the array
say shift @stack; #Fred
say @stack; #EileenDeniseBobAlice

