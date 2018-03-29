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

#while loop
my $i = 0;
while ($i < scalar @array) {
    say $i, ": ", $array[$i];
    $i++;
}

#until loop
my $i = 0;
until ($i >= scalar @array) {
    say $i, ": ", $array[$i];
    $i++;
}

#do loop
my $i = 0;
do {
    say $i, ": ", $array[$i];
    $i++;
} while($i < scalar @array);

#do loop
my $i = 0;
do {
    say $i, ": ", $array[$i];
    $i++;
} until ($i >= scalar @array);
