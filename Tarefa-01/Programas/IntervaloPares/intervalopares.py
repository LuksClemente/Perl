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
