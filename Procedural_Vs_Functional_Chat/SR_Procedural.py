
def calculate_Addition(num): # adds inputted numbers together
    ans=0
    for amount in num:
        ans+=amount
    return ans
    
def calculate_SquareRoot(sum):# Calculate the square root the sum of the two inputted numbers
    if sum < 0:
        return "The square root is undefined for negative numbers"
    
    # using the Newton-Raphson method to calulate 
    
    sranswer=sum/2 # first guess
    tolerance = 1e-11 #tolerance for the approximation

    while abs(sranswer*sranswer-sum)>tolerance:
        sranswer=0.5*(sranswer+sum/sranswer)
    return sranswer    
    
def main():
    numin=input("Enter all the numbers you want to add seprated by spaces: ")
    num=[float(x) for x in numin.split()]

    sum=calculate_Addition(num)

    answer=calculate_SquareRoot(sum)

    if sum < 0:
        print(answer)
    else:
        print("The square root of " + str(sum) + " is: " + str(answer) + ".")

if __name__ == "__main__":
    main()