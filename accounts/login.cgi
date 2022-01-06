#!"C:\Strawberry\perl\bin\perl.exe"
use strict;
use warnings;

use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);

use DBI;
use lib ('C:\wamp\cgi-bin');


# my $dbh = obtener_conexion();

#### read from data
my $CGI = CGI->new(); 
print $CGI->header();
my $etat =  $CGI->param('etat');
my $email =  $CGI->param('email');
my $password =  $CGI->param('password');
# print "<h2> Affichage des votre Donnees</h2>";
# print "Bonjour Monsier $nom Comment allez vous ?<br/>";
# print "Votre Prenom c'est $email <br />";
# print "Tu est un(e) $tel <br />";
#use DB;

my $myConnection = DBI -> connect('DBI:mysql:tberra3li:localhost','root','');
if($etat){
    my $uth = $myConnection -> prepare("SELECT * FROM user where email=$email");
    $uth -> execute();
  
    # print redirect(-url=>'ajouter utilisateur (2).html');
    print("===============$etat======yes===========");
}else{
    #  my $eth = $myConnection -> prepare("SELECT * FROM etablissement where email=$email");
    # $eth -> execute() or die DBI::errstr;;
     print("===============$etat=========no=======");
}



# print redirect(-url=>'ajouter utilisateur (2).html');