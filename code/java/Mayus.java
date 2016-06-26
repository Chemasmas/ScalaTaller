public class Mayus
{
  static boolean hayMayusculas(String cad)
  {
    for(int i=0;i<cad.length();i++)
    {
      if(Character.isUpperCase(cad.charAt(i)))
        return true;
    }
    return false;
  }

  public static void main(String []args)
  {
    System.out.println(hayMayusculas("Chema"));
    System.out.println(hayMayusculas("chema"));
  }
}
