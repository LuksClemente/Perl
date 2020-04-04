c = 1
fatorial = 1

number = input("Digite um numero qualquer: ")

while(c <= number):
    fatorial *= c
    c += 1

print "\n{}! = {}.\n\n".format(number, fatorial)
