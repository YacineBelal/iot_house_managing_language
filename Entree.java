public class Entree {

    protected int Type;
    protected String Valeur;
    protected String Autre="";

    public Entree() {}
    
    public Entree(int Type,String Valeur){
        this.Type=Type;
        this.Valeur=Valeur;
    }

    public Entree(int Type,String Valeur,String Autre){
     this.Type=Type;
     this.Valeur=Valeur;
     this.Autre=Autre;
    }

    public Entree(int Type){
        this.Type=Type;
    }
    public int getType() {
        return Type;
    }

    public String getValeur() {
        return Valeur;
    }


    public String getAutre() {
     return Autre;
 }

    public void setValeur(String valeur) {
        Valeur = valeur;
    }

    public void setType(int type) {
        Type = type;
    }

    public boolean isVolet()
         {return Type==0;} 

    public boolean isChauffage()
         {return Type==1;}
    public boolean isFenetre()
         {return Type==2;}
    public boolean isEclairage()
         {return Type==3;}
    public boolean isAlarme()
         {return Type==4;}
    
    public boolean Allume()
         {return Valeur=="allume";}

    public boolean Eteint()
         {return Valeur=="eteint";}
   
    public boolean Demi()
         {return Valeur=="demi";}

    public boolean Eco()
         {return Valeur=="eco";}

    public boolean Ouvert()
         { return Valeur=="ouvert" ;}

    public boolean Ferme()
         { return Valeur=="fermer";}    
   
}
