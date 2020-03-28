print "Escolha um numero: ";
chomp($a = <STDIN>);

print "Escolha outro numero: ";
chomp($b = <STDIN>);

if($a > $b){
	print "\nO primeiro numero deve ser menor que o segundo pro programa funcionar!\n\n";
}
else{
	print "\n--NUMEROS PARES ENTRE $a E $b---\n";
	print "\n[";

	for($i = $a; $i <= $b; $i++){
		if($i%2 == 0){
			print "$i ";
		}
	}

	print "]\n";
}
