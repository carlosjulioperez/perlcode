use strict; #pragma
use warnings;
use feature qw(say);

my %scientists = (
    "Newton" => "Isaac",
    "Einstein" => "Albert",
    "Darwin" => "Charles",
);

say $scientists{"Newton"}; 
say $scientists{"Einstein"}; 
say $scientists{"Darwin"}; 

my @scientists = %scientists;
say "@scientists";
