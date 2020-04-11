# Perl
![Perl](http://www.w3big.com/perl/0020_999_1373967199_perl_256.png)  

**Alunos**: Lucas Clemente e Matheus Sales  
**Professor**: Francisco Sant'Anna  
**Disciplina**: Estruturas de Linguagens - 2020.1  

## Sumário
- [Introdução](#Introdução)
- [Origem](#Origem)
- [Características](#Características)
- [Exemplos](#Exemplos)
- [Referências](#Referências)
### Introdução

Perl é uma linguagem de programação de alto nível multiplataforma. Chamada por muitos de "Canivete Suíço", a linguagem é bastante flexível, possuindo um leque de aplicações bem amplo, tais como aplicações CGI para a web, administração de sistemas, manipulação de dados criptográficos, programação gráfica e outras várias aplicações que exigem facilidade em manipulação de Strings</p>

### Origem

Perl foi criado por Larry Wall em 1987, fortemente baseada em AWK, BASIC, C, C++, Lisp, Sed e no Shell dos sistemas UNIX. Originalmente a única documentação disponivel sobre Perl era uma man page ("man perl" nos terminais UNIX) e mais tarde em 1991 o livro Programming Perl, conhecido por muitos como Camel Book por conta de sua capa, tornou-se a referencia universal para Perl. Até sua versão 4, Perl era mais considerada como uma linguagem auxiliar, visto que nela existiam diversas limitações tais como a inviabilidade de se desenvolver programas "grandes". Após sua versão 5, Perl atingiu o patamar de uma linguagem completa.

### Características
Perl pode ser definida como uma linguagem multiparadigma, isto é, uma linguagem que suporta vários paradigmas de programação. Os paradigmas suportados são:  
  
* Programação Imperativa: Sua maneira de programar voltada a descrever como o software deve realizar cada tarefa, linha por linha, através de comandos, com suas varíaveis modelando as células de memória.

* Programação Estruturada: Assim como C e outras linguagens estruturadas, Perl permite que o usuário possa definir as suas próprias funções e subrotinas. Além disso possui estruturas de controle muito semelhantes a C.

* Programação Funcional: Um dos recursos da programação funcional existentes em Perl são a maneira como as funções podem ser passadas como parâmetro e valores para outras e funções e podendo ter o resultado armazenado em uma constante.

* Programação Orientada a Objetos: Perl também possui um modelo de orientação a objetos. Em Perl os objetos são estruturas de dados que são associadas a uma classe, os construtores são apenas subs que retornam uma variável e os métodos são apenas subs que recebem a referência de um objeto já instanciado.  
  
Além disso, como Perl possui tipagem dinâmica, não é necessário especificar o tipo de uma variável, o intérprete Perl selecionará automaticamente o tipo de correspondência, dependendo do contexto. Em Perl temos 3 tipos de dados básicos: Escalares, Arrays e Hashs. Por influência das linguagens de Shell Script as variáveis escalares são precedidas por um $(cifrão), seguindo a lógica, os arrays são precedidos por @(arroba/at) e as hashs são precedidas por %(porcentagem).  
  
Assim como toda linguagem, Perl também possui vantagens e desvantagens:  
  
#### Vantagens:

  * Ótimo para manipulação de textos
  * Desenvolvida como Software Livre
  * Multiplataforma
  * Multiparadigma
  * Integração com banco de dados
  * Módulos HTML
  * Módulo CGI
  * Manipulação de dados criptografados  
  
  #### Desvantagens:  
    
  * Scripts lentos por conta do interpretador
  * Sem acesso a funções de baixo nível, ou seja, menos liberdade
  * muitos códigos são difíceis de ler e ruins de escrever, dificultando a manutenção
  * Processos que algumas vezes ocupam muito espaço na memória


### Exemplos
  
#### Hello World em Perl
```pl
#!/usr/local/bin/perl
print("Hello World!");
```
#### 10 Primeiros números da sequencia de fibonacci em perl
```pl
#!/usr/local/bin/perl
$n=1;
$n2=1;
for($i = 0; $i < 10; $i++){
  print("$n\n");
  $t = $n2;
  $n2 = $n+$n2;
  $n = $t;
}
```
##### O programa acima em Python
```py
n=1
n2=1
for i in range(10):
    print(n)
    n, n2 = n2, n+n2
```
#### Comparador de Strings em Perl
```pl
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
```
##### O programa acima em Python
```py
def Comparator(s1, s2):

    if(s1 == s2):
        return 1

    return 0

resultado1 = Comparator("Lucas", "Clemente")
resultado2 = Comparator("Clemente", "Clemente")

if(resultado1 == 1):
    print "As primeiras strings sao iguais!\n"
else:
    print "As primeiras strings sao diferentes!\n"

if(resultado2 == 1):
    print "As segundas strings sao iguais!\n"
else:
    print "As segundas strings sao diferentes!\n"
```
#### Numeros pares em um intervalo
```pl
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
```
##### O programa acima em Python
```py
  
a = input("Escolha um numero: ")

b = input("Escolha outro numero: ")

if(a > b):
    print "\nO primeiro numero deve ser menor que o segundo para o programa funcionar!\n\n"
else:
    print "\n---NUMEROS PARES ENTRE {} e {}---\n".format(a, b)
    print "\n["

    for i in range(a, b+1):
        if(i%2 == 0):
            print i,

    print "]\n"
```
#### Adivinhar o numero
```pl
print("ADIVINHE O NUMERO\n\n");
print("Voce tem tres chances e o numero esta entre 0 e 9 :)\n");
$n=int(rand(10));
#print("$n");
for($i = 0, $i<3, $i+=1){
	print("Faca sua escolha:\n");
	$e=<STDIN>;
	chomp($e);
	if($e > $n) {
		print("menor!\n");
	}
	elsif($e < $n){
		print("maior!\n");
	}
	else{
		print("Ganhou!!!!!\n");
		last;
	}
}
```
##### O programa acima em Python
```py
from random import *
print("ADIVINHE O NUMERO\n\n")
print("Voce tem tres chances e o numero esta entre 0 e 9 :)\n")
n=int(randint(0,10))
print(n)
for i in range(3):
    e=int(input("Faca sua escolha: "))
    if(e > n):
        print("menor!")
    elif(e < n):
        print("maior!")
    else:
        print("Ganhou!!!!!")
        break
```
#### Calculadora em Perl
```pl
use Switch;
print("CALCULADORA EM PERL\n\n");
print("Escolha a opcao desejada: ");
print("+, -, *, /\n");
$escolha = <STDIN>;
chomp($escolha);
print("Insira o primeiro numero:\n");
$n = <STDIN>;
chomp($n);
print("Insira o segundo numero:\n");
$n2 = <STDIN>;
chomp($n2);
switch($escolha){
	case "+"{
		$r = $n + $n2;
		print("$n + $n2 = $r\n");
	}
	case "-"{
		$r = $n - $n2;
		print("$n - $n2 = $r\n");
	}
	case "*"{
		$r = $n * $n2;
		print("$n * $n2 = $r\n");
	}
	case "/"{
		$r = $n / $n2;
		print("$n / $n2 = $r\n");
	}
}
```
##### O código acima em Python
```py

print("CALCULADORA EM PYTHON 3\n\n")
escolha=input("Escolha a opcao desejada: +, -, *, /: ")
n1=float(input("Insira o primeiro numero: "))
n2=float(input("Insira o segundo numero: "))
if(escolha == '+'):
    result = n1+n2
    print("{:1.2f} + {:1.2f} = {:1.2f}".format(n1,n2,result))
    
elif(escolha == '-'):
    result = n1-n2
    print("{:1.2f} - {:1.2f} = {:1.2f}".format(n1,n2,result))

elif(escolha == '*'):
    result = n1*n2
    print("{:1.2f} * {:1.2f} = {:1.2f}".format(n1,n2,result))
    
else:
    result = n1/n2
    print("{:1.2f} / {:1.2f} = {:1.2f}".format(n1,n2,result))
```   
### Referências
  
* https://pt.wikipedia.org/wiki/Perl
* http://www.smeduquedecaxias.rj.gov.br/nead/Biblioteca/Forma%C3%A7%C3%A3o%20Continuada/Tecnologia/cursos/programacao/perl/cgi.pdf
* http://www.w3big.com/perl/perl-intro.html
* https://blol.org/1700-programacao-funcional-com-perl-parte-i-revista-e-aumentada
* https://www.vivaolinux.com.br/script/Orientacao-a-Objetos-Criando-e-usando-uma-classe-em-Perl/
