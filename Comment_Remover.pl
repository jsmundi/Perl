#!/usr/bin/perl 

#Question 4
#Perl script receives the name of a file from command-line.
#Checks if the file is valid. 
#Removes any //-style and /*..*/ comments and prints to the command line. 
#To run the script from terminal: perl lab4_question2.pl mandel.c 

use strict;
use warnings;
use diagnostics;
use v5.22;
use feature 'say';

########################### BODY #################################

#Gets the file name from command line.
my $fileName = $ARGV[0]; 

#Checks if the file name is valid. 
if(not defined $fileName){
    die "Invalid file name.\n";
}

#Open the file. 
open my $IN, '<', "$fileName" or die "Can't read old file: $!";

#Reads the file into an array. 
my @fileArray =<$IN>;  

#Joins the array into an scalar. 
my $fileScalar = join('', @fileArray);

chomp $fileScalar;                  #Remove newline
$fileScalar =~ s{/\*(.*?)\*/}##sg;  #Remove /**/ comments
$fileScalar =~ s{//[^\n\r]*}##sg;   #Remove // comments

#Print the results.   
print "$fileScalar"; 

#Close the file. 
close ($IN);  

############################ END ##############################
