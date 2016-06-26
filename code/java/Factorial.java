import java.math.BigInteger;

public class Factorial
{
  static int factorial(int x)
  {
    if(x==0)
      return 1;
    else
      return x*factorial(x-1);
  }

  /*Usando BigInteger*/

  static BigInteger factorialB(BigInteger x)
  {
    if(x.compareTo(BigInteger.ZERO)==0)
      return BigInteger.ONE;
    else
      return x.multiply(factorialB(x.subtract(BigInteger.ONE)));
  }
  public static void main(String []args)
  {
    int i=Integer.parseInt(args[0]);
    System.out.println(factorial(i));
    System.out.println(factorialB(new BigInteger(args[0])));
  }
}
