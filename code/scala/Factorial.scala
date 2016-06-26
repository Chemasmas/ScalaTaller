object Factorial {
  def factorialB(x: BigInt): BigInt =
  {
    if (x == 0) 1 else x * factorialB(x - 1)
  }

  def factorial(x: Int): Int =
  {
    if (x == 0) 1 else x * factorial(x - 1)
  }

  def main(args: Array[String])
  {
    println(factorial(args(0).toInt));
    println(factorialB(args(0).toInt));
  }
}
