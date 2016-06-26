object ct1{
  def MayoriaEdad(edad:Int) = {
    if(edad > 18)
      true;
    else
      "No deberias estar aqui";
  }

  //def FiboStream(a:Int,b:Int):Stream[Int] = a#::FiboStream(b,a+b);

  //def aleatorio(r:Int,tope:Int):Stream[Int] = r#::aleatorio(Random.nextInt(tope),tope);

  def main(args: Array[String]) ={
    println(MayoriaEdad(args(0).toInt));
    //println(MayoriaEdad(25));
  }
}
