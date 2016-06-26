object fs{
  def sumAcum(a:Int,b:Int):Int = {
    val rango = a to b;
    rango.reduce( (x,y) => x+y );
  }

  def sumCuad(a:Int,b:Int):Int = {
    val rango = a to b;
    rango.reduce( (x,y) => (x)+(y*y) );
  }

  def sumFunc(a:Int,b:Int, f:(Int,Int)=>(Int))
  {
    val rango = a to b;
    rango.reduce( f(x,y) );
  }

  def main(args:Array[String]) {
    println(sumAcum(0,15));
    println(sumCuad(1,3));
    println(sumFunc(0,15,(x,y) => (x)+(y*y));
  }
}
