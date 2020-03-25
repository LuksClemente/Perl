#!C:\xampp\perl\bin\perl
print "Content-type: text/html\n\n";

%meus_indices = (casa => '200000',
				 apartamento => '150000',
				 carro => '30000'
                );
print <<"TESTE";
<html>
	<head>
		<title>Linguagem Perl</title>
	</head>
	<body>
		<h1>$meus_indices{casa}</h1>
		<h1>$meus_indices{apartamento}</h1>
		<h1>$meus_indices{carro}</h1>
</html>
TESTE
exit;
