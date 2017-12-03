#!/usr/bin/perl
use strict;
use warnings;

# Take user input from command line arguments
my $input = $ARGV[0];

# Split input string into individual character array
my @numbers = split //, $input;

# Initialize sum variable
my $sum = 0;

# Array length for the sake of DRY
my $length = scalar(@numbers);

# Calculate number of steps forward to go
my $steps = $length / 2;

# Loop through each of the digits
for my $i (0 .. $length - 1) {
  # Assign variables for the current digit
  my $current = $numbers[$i];

  # This monstrosity checks if the index plus number of steps is defined. If not, it will begin calculating from the beginning of the array
  my $next = defined $numbers[$i + $steps] ? $numbers[$i + $steps] : $numbers[($i + $steps) - $length)];

  # If the current variable is equal to the next variable, add it to the sum
  if ($current == $next) {
    $sum += $numbers[$i];
  }
}

# Finally! Print the answer.
print "Answer: $sum";
