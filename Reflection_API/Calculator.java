import java.lang.reflect.Method;
import java.util.Scanner;

class MathCalculator//class full of functions that do diffrent operations of math
{
    public int addition(int num1, int num2)
    {
        return num1+num2;
    }
    public int subtraction(int num1, int num2)
    {
        return num1-num2;
    }
    public int multiplication(int num1, int num2)
    {
        return num1*num2;
    }
    public double division(int num1, int num2)
    {
        if (num2==0)
        {
            throw new IllegalArgumentException("Please try agian you can not divide by zero");
        }
        return (double) num1/num2;
    }
}

public class Calculator
{
    public static void main(String[] args)
    {
        MathCalculator mathcalculator=new MathCalculator();//creating an instance for the mathcalculator class

        Class<?> mathcalculatorClass=mathcalculator.getClass();//obtains class object

        Scanner inScanner=new Scanner(System.in);//user chooses what operation to do
        System.out.print("Please pick one Operation form the following (addition, subtraction, multiplication, division): ");//getting the method object for the operation
        String operation=inScanner.nextLine();

        try
        {
            Method operationMethod=mathcalculatorClass.getDeclaredMethod(operation, int.class, int.class);
            //getting user information
            System.out.print("Please enter the first number for your equation: ");
            int number1=inScanner.nextInt();
            System.out.print("Please enter the second number for your equation: ");
            int number2=inScanner.nextInt();

            Object result=operationMethod.invoke(mathcalculator, number1, number2);//slecte operation dynamically
            //showing the answer
            System.out.println("The result in your equation is: "+result);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            inScanner.close();
        }
    }
}