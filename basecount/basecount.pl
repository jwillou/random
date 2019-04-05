#!/usr/bin/perl
use diagnostics; 
use strict; 

#Usage BaseCount.pl (.fastq file for analysis)

open (INP, "< $ARGV[0]");
my $lineNum = 1; 
my $characterCount = 0;

while (my $line = <INP>) {
	if ( ($lineNum + 2) % 4 == 0) {
		chomp $line; 
		$characterCount += length($line); 
	}
	$lineNum++; 
}
print "$ARGV[0]: $characterCount bases\n";

