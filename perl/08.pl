#!/usr/bin/perl
use CGI ':standard'; 
@msg = ("Welcome", "Have a nice", "Good Morning", "Good Day"); 
$range = 4;
$random_number = int(rand($range)); 
if (param)
{
print header();
print start_html(-title=>"User Name",-bgcolor=>"Pink",-text=>"blue");
$cmd = param("name");
print b("Hello $cmd,$msg[$random_number]"),br();
print start_form();
print submit(-value=>"Back");
print end_form(); 
print end_html();
}
else{
print header();
print start_html(-title=>"Enter user name",-bgcolor=>"yellow",-text=>"blue");
print start_form(),textfield(-name=>"name", -value=>""),submit(-name=>"submit",-value=>"Submit"), reset();
print end_form(); 
print end_html();
}
