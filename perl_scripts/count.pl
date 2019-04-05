#!/usr/bin/perl -w

#PBS -N filter
#PBS -q fnrgenetics
#PBS -l nodes=1:ppn=1
#PBS -l walltime=260:00:00
#PBS -m abe
#PBS -M jwillou@purdue.edu

chdir '/scratch/conte/j/jwillou/leucopus/';

my $file    = "abyssName1.fa";
my $outfile = "abyssName2TRASH.fa";
my $count   = "count.txt";

open (INFILE,  "<", $file);
open (OUTFILE, ">", $outfile);
open (COUNT,   ">", $count);

#1 is header, 2 is sequence to be printed, 3 is sequence to be skipped
my $i = 1;
my @s = 1;
my $counts = 0;

while(my $line = <INFILE>){
	if($i == 1){
		@s = split(' ', $line);
		print OUTFILE $line;
		$i = 2;
		$x = $s[0];
		$x =~ s/\>//;
		print COUNT "$x\n";
	}elsif($i == 2){
		print OUTFILE $line;
		$i = 1;
	}
}


close INFILE;
close OUTFILE;
close COUNT;
