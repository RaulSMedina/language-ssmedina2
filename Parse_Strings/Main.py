import re

def parser(instring):
    try:
        literal_Python=eval(instring)

        if isinstance(instring, str):
            return True
        else:
            return False
    except:
        return False

def main():
    try:
        uInput=input("Enter a phrase to check if it is a python string litiral: ")
    
        if parser(uInput):
            print("Good job the phrase you entered is a string literal.")
        else:
            print("The phrase you entered is not a string literial please try agian.")
    except EOFError:
        print ("An error has occured please provide a input.")


if __name__ == "__main__":
    main()