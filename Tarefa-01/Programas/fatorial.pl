$c = 1;
$fatorial = 1;

print "Digite um numero qualquer: ";
chomp($number = <STDIN>);

while($c <= $number){
	$fatorial *= $c;
	++$c;
}

print "\n\n$number! = $fatorial.\n\n";
