
#define a function to return the number of vowels in a string
def vowelCount(sentence):
    
    #define all the vowels as a string
    vowels = 'aeiou'

    # initialize a counter 
    count = 0
    
    #check for each character whether a vowel or not
    for s in sentence: 
        if s in vowels:
            count = count + 1

    #return the count value
    return count

# define another function to call the function

def get_vowel_counts():
     # take user input
    inp = input('Enter a string: ')
    print(f'There are {vowelCount(inp)} vowels in the string.')
    return 

# define a condition to run the main function 
if __name__ == "__main__":
    #call the above function
    get_vowel_counts()
