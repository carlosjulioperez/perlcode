use strict; #pragma
use warnings;
use feature qw(say);

my $gain = 48;

say "You gained ", $gain, " ", ($gain == 1 ? "experience point" : "experience points"), "!";

#https://stackoverflow.com/questions/3828205/how-do-i-enter-a-multi-line-comment-in-perl
=begin comment
Aside: singulars and plurals are best spelled out in full in both cases. Don't do something clever like the
following, because anybody searching the codebase to replace the words "tooth" or "teeth" will never find this
line:
=end comment
=cut

