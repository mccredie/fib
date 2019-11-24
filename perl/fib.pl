#!/usr/bin/env perl

use strict;

sub fib($) {
  my $x = 1;
  my $y = 1;
  my @values;
  for my $i (1..$_[0]) {
    push @values, $x;
    my $tmp = $x;
    $x = $y;
    $y = $y + $tmp;
  }

  return @values;
}

foreach my $x (fib($ARGV[0])) {
  print $x,"\n";
}
