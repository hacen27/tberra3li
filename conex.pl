#!"C:\Strawberry\perl\bin\perl.exe"

#creation d'un modele
package DB;

use strict;
use warnings;
use CGI::Carp qw(fatalsToBrowser);
use DBI;

use Exporter;
our @ISA=qw(Exporter);


our @EXPORT = qw(obtener_conexion);

sub obtener_conexion{
    my $hostname = 'localhost';
    my $port = 3360;
    my $username = 'root';
    my $password = '';
    my $database = 'tberra3li';
    my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
    return DBI -> connect($dsn,$username,$password,{
        RaiseError => 1,
        AutoCommit => 1
    }) or die("Erreur de connection ");
}