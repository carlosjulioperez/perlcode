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

#unshift inserts new elements at the beginning of the array
unshift @stack, "Hang", "Grece";
say @stack; #HangGreceEileenDeniseBobAlice

#splice removes and returns an array slice, replacing it with a different array slice
say splice (@stack, 1, 4, "<<<", ">>>"); #GreceEileenDeniseBob
say @stack; # Hang<<<>>>Alice   
