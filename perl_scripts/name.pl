#!/usr/bin/perl -w

#prepare assembly for bowtie2 by changing name to 1 word (number)


chdir '/scratch/conte/j/jwillou/leucopus';

my $file    = "abyssName1.fa";
my $outfile = "abyssName2.fa";

open (INFILE,  "<", $file);
open (OUTFILE, ">", $outfile);

#1 is header, 2 is sequence to be printed, 3 is sequence to be skipped
my $i = 1;
my @s = 1;
my $counter = 1;
while(my $line = <INFILE>){
        if($i == 1){
        	@s = split(' ', $line);
            print OUTFILE ">seq$counter\n";
        	$counter++;
		$i = 2;
        }elsif($i == 2){
            print OUTFILE $line;
            $i = 1;
        }
}

