use strict; #pragma
use warnings;
use feature qw(say);

my $word = "antidisestablishmentarianism";
my $strlen = length $word;

say $strlen;

if ($strlen >= 15){
    say "'", $word, "' is a very long word";
}elsif(10<= $strlen && $strlen < 15) {
    say "'", $word, "' is a medium-length long word";
}else{
    say "'", $word, "' is a short word";
}

#Shorter statement if condition syntax
say "'", $word, "' is actually enormous" if $strlen >= 20;

#unless and else example
my $temperature = 10;

unless ($temperature > 30){
    say $temperature, " degree Celcius is not very hot"; 
}else{
    say $temperature, " degree Celcius is actually pretty hot"; 
}
    
#is highly recommended because it is so easy to read.
say "Oh no it's too cold" unless $temperature > 15; 
