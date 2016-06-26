class JavaStyle
{
  def loop(lista:Array[String]) = {
    var i =0;
    while( i < lista.length )
    {
      println(lista(i));
      i+=1;
    }
  }
}

class ScalaStyle
{
  def loop(lista: Array[String]) = {
    //lista.foreach( elem => println(elem) )
    //lista.foreach(println);
    for(elem <- lista)
      println(elem)
  }
}

object Principal
{
  def main(args: Array[String]) = {
    val jstyle = new JavaStyle();
    val sstyle = new ScalaStyle();
    println("Java Style");
    jstyle.loop(args);
    println("Scala Style");
    sstyle.loop(args);
  }
}
