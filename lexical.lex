import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column


%{
    public int getYyLine(){
        return yyline+1;
    }
    public int getYyColumn(){
        return yycolumn+1;
    }
    public String getYyText(){
        return yytext();
    }

    boolean ChaineNonFerme=false;
   


 
%}


CHIFFRE = [0-9] 
ENTIER = [0-9]+
IDF = [A-Za-z][A-Za-z0-9_]*
ESPACE=" "
CHAINE = (\")[^\"\)]*(\") // exclure la parenthése ouverte pour pouvoir l'utiliser pour reconnaitre les chaines non fermées
ProgD    = <PROGRAMME_DOMUS> 
ProgDF   = <\/PROGRAMME_DOMUS>
Dec_App  = <DECLARATION_APPAREILS>
Dec_AppF = <\/DECLARATION_APPAREILS>
Dec_Int  = <DECLARATION_INTERFACES>
Dec_IntF = <\/DECLARATION_INTERFACES>
Dec_Sce  = <DECLARATION_SCENARII>
Dec_SceF = <\/DECLARATION_SCENARII>
Scenario = <SCENARIO{ESPACE}
ScenarioF = <\/SCENARIO{ESPACE}
Dec_Com  = <DECLARATION_COMMANDES>
Dec_ComF = <\/DECLARATION_COMMANDES>
IDFMALFORME = ([0-9]+{IDF})

Commentaire = (\/\/)(.)+(\n) 

ECLAIRAGE = eclairage
VOLET = volet
CHAUFFAGE = chauffage
INTERRUPTEUR = interrupteur
MOBILE = mobile
TELECOMMANDE = telecommande
ALARME= alarme 
FENETRE= fenetre 
appareils= hifi | cafetiere | tv | video_proj | lave_vaisselle | lave_linge | portail


AUTRE = {appareils}
AUTRE_VIDE = autre_appareil 
Guillemet = \"
APPR_DIST = interrupteur | mobile | tablette | telephone | telecommande 


DATE = "("({CHIFFRE}+ | (_))(,)({CHIFFRE}+ | (_))(,)({CHIFFRE}+ | (_))(,)({CHIFFRE}+ | (_))(,)({CHIFFRE}+)")"
OPERATION = allumer | eteindre | tamiser | allumer_partiel | allumer_eco | ouvrir | ouvrir_partiel | fermer | fermer_partiel 
OPERATION_ET = etat
ETAT = allume | eteint | demi | eco | ouvert | ferme  

%%
"pourtout" { if(!ChaineNonFerme) return new Symbol(sym.POURTOUT);}
"faire" { if(!ChaineNonFerme) return new Symbol(sym.FAIRE);}
"fait"  { if(!ChaineNonFerme) return new Symbol(sym.FAIT);}
"."     { if(!ChaineNonFerme) return new Symbol(sym.POINT);}
":" { if(!ChaineNonFerme) return new Symbol(sym.DPOINT);}
";" { if(!ChaineNonFerme) return new Symbol(sym.POINTV);}
"," { if(!ChaineNonFerme) return new Symbol(sym.V);}
"==" { if(!ChaineNonFerme) return new Symbol(sym.DEGAL);}
"=" { if(!ChaineNonFerme) return new Symbol(sym.EGAL);}
"("  {if(!ChaineNonFerme) return new Symbol(sym.PG);}
")"  {
    if(ChaineNonFerme){
    ChaineNonFerme=false;    
    System.out.println("erreur lexical: chaine non fermée "+getYyLine()+" colonne "+getYyColumn());    
    }  
    return new Symbol(sym.PD);}
"{" {if(!ChaineNonFerme) return new Symbol(sym.AG);}
"}"  { if(!ChaineNonFerme) return new Symbol(sym.AD);} 

">" {if(!ChaineNonFerme) return new Symbol(sym.CD);}

"definir" {if(!ChaineNonFerme) 
{
return new Symbol(sym.definir);}}

"message" {if(!ChaineNonFerme) 
{  
return new Symbol(sym.message);}}

"associer" {if(!ChaineNonFerme) 
{   
return new Symbol(sym.associer);}}

"programmer" {if(!ChaineNonFerme) 
{

return new Symbol(sym.programmer); }}

"executer_scenario" {if(!ChaineNonFerme) 
{
  return new Symbol(sym.executer_scenario);} }


"si" {if(!ChaineNonFerme) 
{
   return new Symbol(sym.SI);} }

"alors" {if(!ChaineNonFerme) 
{

return new Symbol(sym.ALORS);} }

"sinon" {if(!ChaineNonFerme) 
{

return new Symbol(sym.SINON);} }

"fsi" {if(!ChaineNonFerme) 
{

return new Symbol(sym.FSI);} }

{ENTIER} {if(!ChaineNonFerme) return new Symbol(sym.ENTIER,new Integer(yytext()));}
{CHAINE} {if(!ChaineNonFerme) return new Symbol(sym.CHAINE,getYyText());}
{ProgD} {if(!ChaineNonFerme) return new Symbol(sym.ProgD);}
{ProgDF} {if(!ChaineNonFerme) return new Symbol(sym.ProgDF);}
{Dec_App} {
    if(!ChaineNonFerme) {
   
    return new Symbol(sym.Dec_App); }}
{Dec_AppF} {if(!ChaineNonFerme) {
   
    return new Symbol(sym.Dec_AppF);}}
{Dec_Int}  {if(!ChaineNonFerme) {

    return new Symbol(sym.Dec_Int);}}
{Dec_IntF} {if(!ChaineNonFerme) { 
   
    return new Symbol(sym.Dec_IntF);}}
{Dec_Sce} {if(!ChaineNonFerme) return new Symbol(sym.Dec_Sce);}
{Dec_SceF} {if(!ChaineNonFerme) return new Symbol(sym.Dec_SceF);}
{Scenario} {if(!ChaineNonFerme) return new Symbol(sym.Scenario,getYyText());}
{ScenarioF} {if(!ChaineNonFerme) return new Symbol(sym.ScenarioF,getYyText());}


{Dec_Com} {if(!ChaineNonFerme) return new Symbol(sym.Dec_Com);}
{Dec_ComF} {if(!ChaineNonFerme) return new Symbol(sym.Dec_ComF);}
{ETAT} {if(!ChaineNonFerme) return new Symbol(sym.ETAT,getYyText());}
{Commentaire} {}
{ECLAIRAGE} {if(!ChaineNonFerme) return new Symbol(sym.ECLAIRAGE);}
{VOLET} {if(!ChaineNonFerme) return new Symbol(sym.VOLET);}
{FENETRE} {if(!ChaineNonFerme) return new Symbol(sym.FENETRE);}
{CHAUFFAGE} {if(!ChaineNonFerme) return new Symbol(sym.CHAUFFAGE);}
{INTERRUPTEUR} {if(!ChaineNonFerme) return new Symbol(sym.INTERRUPTEUR);}
{MOBILE} {if(!ChaineNonFerme) return new Symbol(sym.MOBILE);}
{TELECOMMANDE} {if(!ChaineNonFerme) return new Symbol(sym.TELECOMMANDE);}
{ALARME} {if(!ChaineNonFerme) return new Symbol(sym.ALARME);}
{AUTRE} {if(!ChaineNonFerme) {return new Symbol(sym.AUTRE,getYyText());}}
{AUTRE_VIDE} {if(!ChaineNonFerme) return new Symbol(sym.AUTRE_VIDE);}
{APPR_DIST} { if(!ChaineNonFerme) return new Symbol(sym.APPR_DIST);}
{DATE} {if(!ChaineNonFerme) return new Symbol(sym.DATE,getYyText());}
{OPERATION} {if(!ChaineNonFerme) return new Symbol(sym.OPERATION,getYyText());}
{OPERATION_ET} {if(!ChaineNonFerme) return new Symbol(sym.OPERATION_ET,getYyText());}


{IDFMALFORME} {  System.out.println("Erreur ligne "+getYyLine()+" colonne "+getYyColumn()+" idf mal forme : "+yytext());}

{IDF} {if(!ChaineNonFerme) return new Symbol(sym.IDF,getYyText());}



{Guillemet}  {  ChaineNonFerme=true;
    return new Symbol(sym.CHAINE); }  

\n {}
\t {}
" " {} 
. { 
    
    System.out.println("Erreur ligne "+getYyLine()+" colonne "+getYyColumn()+ " : "+yytext());}
  
