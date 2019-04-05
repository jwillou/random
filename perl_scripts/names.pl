my $file    = "abyss5000.all.maker.transcripts.fasta";
my $outfile = "abyss5000.all.maker.transcriptsNN.fasta";
my $changes = "contignamechanges.txt";

open (INFILE,  "<", $file);
open (OUTFILE, ">", $outfile);
open (CHANGES, ">", $changes);

#1 is header, 2 is sequence to be printed, 3 is sequence to be skipped
my $i = 1;
my @s = 1;
my $counter = 1;
while(my $line = <INFILE>){
        if($line =~ /\>/){
	   # print OUTFILE "header\n";
            print OUTFILE ">$counter\n";
            print CHANGES ">$counter\t$line";
            $counter++;
        }
	else {
           # print OUTFILE "not header\n";
	    print OUTFILE $line;
        }
}
