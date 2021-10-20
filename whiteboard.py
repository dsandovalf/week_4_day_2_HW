# You are going to be given a word. Your job is to return 
# the middle character of the word. If the word's length 
# is odd, return the middle character. If the word's 
# length is even, return the middle 2 characters.

def middle(word):
    if len(word) % 2 != 0:
        return word[len(word)//2]  
    else:
         return word[len(word)//2-1:len(word)//2+1]


def middle(word):
    if len(word)%2 == 0:
        return word[len(word)//2-1 : len(word)//2+1]
    if len (word)%2 != 0:
        return word[len(word)//2]
print(middle ('coding'))