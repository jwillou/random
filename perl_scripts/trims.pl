my $file    = "Uneak.snps.fa";
my $tags    = "indvtags.txt";
my $outfile = "Uneak.snps.trimmed.fa";

open (INFILE,  "<", $file);
open (TAGFILE, ">", $tags);
{
local $/;
$tags = <TAGFILE>;
}
close TAGFILE;
open (OUTFILE, ">", $outfile);
print TAGFILE;
# #1 is header, 2 is sequence to be printed, 3 is sequence to be skipped
# my $i = 1;
# my @s = 1;
# my $counter = 1;
# while(my $line = <INFILE>){
#         if($line =~ /\>/){
# 	   # print OUTFILE "header\n";
#             print OUTFILE ">$counter\n";
#             print CHANGES ">$counter\t$line";
#             $counter++;
#         }
# 	else {
#            # print OUTFILE "not header\n";
# 	    print OUTFILE $line;
#         }
# }
