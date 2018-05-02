use strict; #pragma
use warnings;
use feature qw(say);

my @elements = ("Antimonio", "Arsenic", "Aluminum", "Selenium");
say @elements; #AntimonioArsenicAluminumSelenium
say "@elements"; #Antimonio Arsenic Aluminum Selenium 
say join (", ", @elements); #Antimonio, Arsenic, Aluminum, Selenium

say reverse ("Hello", "World"); #WorldHello
say reverse ("HelloWorld"); #HelloWorld
say scalar reverse("HelloWorld"); #dlroWolleH
say scalar reverse ("Hello", "World"); #dlroWolleH

