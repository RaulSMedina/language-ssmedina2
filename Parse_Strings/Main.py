import re

def parser(instring):

    pattern = r'^[a-zA-Z]+\d*$' #define the patter

    match= re.match(pattern, instring)#will match the pattern

    if match:
        print(f'The string you entered matches the pattern. Good Job!')
    else:
        print(f'The string you entered does not matche the pattern. Please try agian.')

def main():
    instring=input("Please enter a string to match the pattern ^[a-zA-Z]+\d*$: ")
    
    parser(instring)

if __name__ == "__main__":
    main()