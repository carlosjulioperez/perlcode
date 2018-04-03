use strict; #pragma
use warnings;
use feature qw(say);

my @array = (
    "print",
    "these",
    "strings",
    "out",
    "for",
    "me", # trailing comma is okay
);

# Basic c-style for loop. This is old-fashioned and should be avoided were possible.
for (my $i = 0; $i < scalar @array; $i++){
    say $i, ": ", $array[$i];
}
# $i has ceased to exist here, which is much tidier.

# Unlike PHP, the for and foreach keywords are synomyms.
foreach my $string ( @array ) {
    say $string;
}
for my $string ( @array ) {
    say $string;
}

# If you need the indices, the range operator .. creates an anonymous list of integers
foreach my $i (0 .. $#array){
    say $i, ": ", $array[$i];
}

my %scientists = (
    "Newton" => "Isaac",
    "Einstein" => "Albert",
    "Darwin" => "Charles",
);

# You can't iterate over a hash. However you can iterate over its keys.
foreach my $key (keys %scientists){
    say $key, ": ", $scientists{$key};
}

# Sorting the array of keys alphabetically
foreach my $key (sort keys %scientists){
    say $key, ": ", $scientists{$key};
}

#If you don't provice an explicit iterator, Perl uses a default iterator $_.
#$_ is the first and friendliest of the built-in variables.

foreach (@array){
    say $_;
}

# Super-short loop with default iterator in a single statement
say $_ foreach @array;
