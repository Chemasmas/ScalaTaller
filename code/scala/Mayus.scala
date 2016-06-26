object Mayus
{
  def hayMayusculas(cad :String): Boolean =
  {
    return cad.exists(_.isUpper);
  }

  def main(args:Array[String]) =
  {
    println(hayMayusculas("Chema"));
    println(hayMayusculas("chema"));
  }
}
