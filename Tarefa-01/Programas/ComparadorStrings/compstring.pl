sub comparator{
	my(@parametros) =  @_;
	
	my $string1 = $parametros[0];
	my $string2 = $parametros[1];
	
	if($string1 eq $string2){
		return 1;
	}
	return 0;
}
my $resultado1 = comparator("Lucas", "Clemente");
my $resultado2 = comparator("Clemente", "Clemente");

if($resultado1 == 1){
	print "As primeiras strings sao iguais!\n";
}
else{
	print "As primeiras strings sao diferentes!\n";
}
if($resultado2 == 1){
	print "As segundas strings sao iguais!\n";
}
else{
	print "As segundas strings sao diferentes!\n";
}
