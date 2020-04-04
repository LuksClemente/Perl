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
