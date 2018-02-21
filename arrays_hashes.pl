use strict; #pragma
use warnings;
use feature qw(say);

my $data = "orange";
my @data = ("purple");
my %data = ("0" => "blue"); # Puede ser => o ,

say $data; # "orange"

say $data[0]; # "purple"
say $data["0"]; # "purple"

say $data{0}; # "blue"
say $data{"0"}; # "blue"
