use strict; #pragma
use warnings;
use feature qw(say);

my @elements = ("Antimonio", "Arsenic", "Aluminum", "Selenium");
say @elements; #AntimonioArsenicAluminumSelenium
say "@elements"; #Antimonio Arsenic Aluminum Selenium 
say join (", ", @elements); #Antimonio, Arsenic, Aluminum, Selenium
