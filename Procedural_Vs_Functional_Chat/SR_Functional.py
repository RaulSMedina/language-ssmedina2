import math

def calculate_Addition(num):
    return sum(num)   # adds the two numberes together

def calculate_SquareRoot(sum):
    if sum < 0:
        return "The square root is undefined for negative numbers"
    return math.sqrt(sum)   # finds the square root of the sum of the two numbers

def main():
    numin=input("Enter all the numbers you want to add seprated by spaces: ")
    num = [float(x) for x in numin.split()]  # turns the numbers that wer inputed into a list of numbers

    sum = calculate_Addition(num) # store the answer of adding the two numbers into sum  

    answer = calculate_SquareRoot(sum) # store the square root of sum into answer

    if sum < 0:
        print(answer)
    else:
        print("The square root of " + str(sum) + " is: " + str(answer) + ".")

if __name__ == "__main__":
    main()