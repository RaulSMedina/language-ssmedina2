import re

def parser(instring):

    pattern=re.compile(r'^[\'\"](?:[^\\\\\'\"]|\\\\[nrt\\\"])*[\'\"]$') #pattern to match a python string literal

    return bool(pattern.match(instring))#checks to see if phrase user inputed is a python string literal

def main():
    try:
        uInput=input("Enter a phrase to check if it is a python string litiral: ")#user inputs a phrase of there chooseing
    
        if parser(uInput):
            print("Good job the phrase you entered is a string literal.")
        else:
            print("The phrase you entered is not a string literial please try agian.")
    except EOFError:
        print ("An error has occured please provide a input.")#if you did not enter a phrase to compare with it will error out with an EOFError and tell you to put in a pharse.


if __name__ == "__main__":
    main()