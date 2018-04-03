use strict; #pragma
use warnings;
use feature qw(say);

# Loop control
# next and last are known as continue and break respectively.
# This example finds primes bellow 100
CANDIDATE: for my $candidate ( 2 .. 100){
    for my $divisor ( 2 .. sqrt $candidate ){
        next CANDIDATE if $candidate % $divisor == 0;
    }
    say $candidate, " is prime";
}
