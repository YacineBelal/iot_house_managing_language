import java.util.Vector;

public class ensemble {
 
   
    protected Vector<String> Contenu=new  Vector <String> ();


    public ensemble()
    {
   
    }

    public void add(String Nom) {Contenu.add(Nom);}
    public Vector<String> getVector(){
        return Contenu;
    }; 

 }