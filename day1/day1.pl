#!/usr/bin/perl
use strict;
use warnings;

# Take user input from command line arguments
my $input = $ARGV[0];

# Split input string into individual character array
my @numbers = split //, $input;

# Initialize sum variable
my $sum = 0;

# Loop through each of the digits
for my $i (0 .. scalar(@numbers) - 1) {
  # Assign variables for the current and next digit
  my $current = $numbers[$i];
  my $next = defined $numbers[$i + 1] ? $numbers[$i + 1] : $numbers[0]; # If we go out of the array's bounds, grab the first element

  # If the current variable is equal to the next variable, add it to the sum
  if ($current == $next) {
    $sum += $numbers[$i];
  }
}

# Finally! Print the answer.
print "Answer: $sum";
