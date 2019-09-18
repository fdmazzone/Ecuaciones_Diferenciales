def collatz(n):
    if n%2==0:
        return n/2
    else:
        return 3*n+1
def iter(ini,tot):
    L=[ini]
    for j in range(tot):
        L+=[collatz(L[-1])]
    return L
