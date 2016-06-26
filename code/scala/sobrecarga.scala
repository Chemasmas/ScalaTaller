class Persona(val nombre:String,val edad:Int)
{
  def -->(otro:Persona):String = {
    val nom = otro.nombre
    s"Hola $nom";
  }
  def <--(otro:Persona):String = {
    "Buen Dia!"
  }
}

object sobre
{
  def main(args: Array[String]) = {
    val a = new Persona("Chema",26);
    val b = new Persona("Alan",15);

    println(a-->b);
    println(a<--b);
  }
}
