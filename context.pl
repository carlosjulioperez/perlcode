use strict; #pragma
use warnings;
use feature qw(say);

my @array = "Mendelev"; # same as 'my @array=("Mendelev");'

my @array = ("Alpha", "Beta", "Gamma", "Pie");
my $scalar = @array;
say $scalar; #4

# A list expression, return the final scalar in the list, not the length of the list
my $scalar = ("Alpha", "Beta", "Gamma", "Pie");
say $scalar; # Pie

my @array = ("Alpha", "Beta", "Goo");
my $scalar = "-X-";
say @array;              # AlphaBetaGoo
say $scalar, @array, 98; # -X-AlphaBetaGoo98

# reverse in list context
say reverse "hello world"; # hello world

# reverse in scalar context
my $string = reverse "hello world";
say $string; # dlrow olleh

# force expression to be evaluated in scalar context with the "scalar" built-in function.
say scalar reverse "hello world"; # dlrow olleh

