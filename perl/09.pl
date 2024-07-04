#!/usr/bin/perl
use CGI ':standard';
use DBI;
print "Content-type: text/html\n\n";
print "<HTML><HEAD><TITLE>Result of the insert operation</TITLE></HEAD><BODY>";
$dbh = DBI->connect("DBI:mysql:muz", "apache", "cool");
$name = param("name");
$age = param("age");
$qh = $dbh->prepare("INSERT INTO stud VALUES ('$name', '$age')");
$qh->execute();
$qh = $dbh->prepare("SELECT * FROM stud");
$qh->execute();
print "<table border=1><tr><th>Name</th><th>Age</th></tr>";
while (($name, $age)= $qh->fetchrow()) {
    print "<tr><td>$name</td><td>$age</td></tr>";
}
print "</table>";
$qh->finish();
$dbh->disconnect();
print "</BODY></HTML>";
