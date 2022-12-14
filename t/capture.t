use IO::Capture::Simple;
use Test;

plan 2;

my $test = "OH HAI!";

my @r = capture { say $test; note $test;};

@r[^2].map: { is  $_ , "$test\n", "$test in captured string" };
