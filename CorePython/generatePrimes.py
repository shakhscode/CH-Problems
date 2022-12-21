def generatePrimes(n):
    #If n is 2 or less than 2 then there will one primes number, that is 2 itself
    if n <= 2: 
        raise StopIteration
    yield 2
    
    for i in range(3, n, 2):   # When n is greater than 2, check all odd numbers wheather it is prime or not
        for x in range(3, int(i**0.5)+2, 2):
            if not i % x:   
                # here 'not' is the logical not operator.
                # when i is perfectly divisible by x ,(i.e. i is not a prime number)
                # then i%x = 0 which means (i%x) = False and  (not i%x)=True, so it will break the loop
                
                break

        # when i is not perfectly divisible by x, (i.e. 'i' is a prime number)
        # then i%x = some_positive_value i.e. (i%x)= True and (not i%x) = False, so now it will execute else statment
        else:
           
            yield i  # yeild i as a prime number.


def main():
    import time  #since we need to calculate the execution time

    #Task 1: Solve the first part

    # Generate first 100 primes numbers and print all the values
    n1 = 100 
    a= [x for x in generatePrimes(n1)]
    print(a)
    