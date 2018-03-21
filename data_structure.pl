use strict; #pragma
use warnings;
use feature qw(say);

#--- Example 1
my %owner1 = (
    "name" => "Santa Claus",
    "DOB" => "1882-12-25",
);
my $owner1Ref = \%owner1;

my %owner2 = (
    "name" => "Mickey Mouse",
    "DOB" => "1928-11-18",
);
my $owner2Ref = \%owner2;

my @owners = ( $owner1Ref, $owner2Ref );
my $ownersRef = \@owners;

my %account = (
    "number" => "12345678",
    "opened" => "2000-01-01",
    "owners" => $ownersRef,
);
say %account;

#--- Example 2
my @owners = ( \%owner1, \%owner2 );

my %account = (
    "number" => "12345678",
    "opened" => "2000-01-01",
    "owners" => \@owners,
);
say %account;

#--- Example 3 using anonymous array (square brackets) and anonymous hash (braces)

# Braces denote an anonymous hash
my $owner1Ref = {
    "name" => "Santa Claus",
    "DOB" => "1882-12-25",
};

my $owner2Ref = {
    "name" => "Mickey Mouse",
    "DOB" => "1928-11-18",
};

# Square bracketys denote an anonymous array
my $ownersRef = [ $owner1Ref, $owner2Ref ];

my %account = (
    "number" => "12345678",
    "opened" => "2000-01-01",
    "owners" => $ownersRef,
);
say %account;

#--- Example 4 Declarig complex data structres in-line
# Or, for short (and this is the form you should actually use when declaring complex data structures in-line):

my %account = (
    "number" => "98765432",
    "opened" => "3000-01-01",
    "owners" => [
        {
            "name" => "Carlos Julio Pérez Quizhpe",
            "DOB" => "1979-03-03",
        },
        {
            "name" => "María Esther Chica Rodriguez",
            "DOB" => "1980-12-24",
        },
    ],
);
say %account;

# Getting information out of a data structure

#--- Example 1
my $ownersRef = $account{"owners"};
my @owners = @{ $ownersRef };

my $owner1Ref = $owners[0];
my %owner1 = %{ $owner1Ref };

my $owner2Ref = $owners[1];
my %owner2 = %{ $owner2Ref };

say "Account: " , $account { "number" };
say "Opened on: " , $account { "opened" };
say "Joint owners: ";
say "\t", $owner1{"name"}, " (born ", $owner1{"DOB"}, ")";
say "\t", $owner2{"name"}, " (born ", $owner2{"DOB"}, ")";

#--- Example 2, for short

my @owners = @{ $account{"owners"} };
my %owner1 = %{ $owners[0] };
my %owner2 = %{ $owners[1] };

say "Account: " , $account { "number" };
say "Opened on: " , $account { "opened" };
say "Joint owners: ";
say "\t", $owner1{"name"}, " (born ", $owner1{"DOB"}, ")";
say "\t", $owner2{"name"}, " (born ", $owner2{"DOB"}, ")";

#--- Example 3, using references and the -> operator
my $ownersRef = $account{"owners"};
my $owner1Ref = $ownersRef->[0] ;
my $owner2Ref = $ownersRef->[1] ;

say "Account: " , $account { "number" };
say "Opened on: " , $account { "opened" };
say "Joint owners: ";
say "\t", $owner1Ref->{"name"}, " (born ", $owner1Ref->{"DOB"}, ")";
say "\t", $owner2Ref->{"name"}, " (born ", $owner2Ref->{"DOB"}, ")";

#--- Example 4, if we completely skip all the intermediate values

say "Account: " , $account { "number" };
say "Opened on: " , $account { "opened" };
say "Joint owners: ";
say "\t", $account{"owners"}->[0]->{"name"}, " (born ", $account{"owners"}->[0]->{"DOB"}, ")";
say "\t", $account{"owners"}->[1]->{"name"}, " (born ", $account{"owners"}->[1]->{"DOB"}, ")";

