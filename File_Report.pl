#!/usr/bin/perl 

#Create a report file: "/etc/passwd/" of Username, UID and NAME.
#To run the script from terminal: perl Lab4_Perl.pl 

use strict;
use warnings;
use diagnostics;
use v5.22;

use feature 'say';

########## BODY ##########

my $FH = ""; #File Handler
my $fileName = "/etc/passwd"; #File name to be 

open (FH, "<$fileName") or die "Could not open the file!"; #Open file and perform check. 

my @fileArray =<FH>;  # Reads the file into an array. 

#initalize variables. 
my $uname ="";
my $uid ="";
my $name ="";

#Print header
say("uname     uid     name");

#Iterate the array. 
foreach (@fileArray){

    chomp;
    my @fields = split(':');
    $uname = $fields[0];
    $uid = $fields[2];
    $name = $fields [4];

    #Print using the specified file format
    $~ = "FILEFORMAT";
    write;
}

close (FH); #File closed

#File format for the report 
format FILEFORMAT = 
@<<<<     (@)    @<<<<<
$uname,   $uid,   $name
.            

########## ENDS ##########


