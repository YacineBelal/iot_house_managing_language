 CAutreAppareil e3 = new CAutreAppareil ("e3", TypeAppareil.AUTRE_APPAREIL_HIFI);
 ma_liste_appareils.add(e3);
 CVoletFenetre e2 = new CVoletFenetre ("e2", TypeAppareil.VOLET);
 ma_liste_appareils.add(e2);
 CEclairage e1 = new CEclairage ("e1", TypeAppareil.ECLAIRAGE);
 ma_liste_appareils.add(e1);
 CVoletFenetre v4 = new CVoletFenetre ("v4", TypeAppareil.VOLET);
 ma_liste_appareils.add(v4);
 CVoletFenetre v1 = new CVoletFenetre ("v1", TypeAppareil.VOLET);
 ma_liste_appareils.add(v1);
 CChauffage rad1 = new CChauffage("rad1", TypeAppareil.CHAUFFAGE);
 ma_liste_appareils.add(rad1);
 CChauffage r1 = new CChauffage("r1", TypeAppareil.CHAUFFAGE);
 ma_liste_appareils.add(r1);
 CAlarme a1 = new CAlarme ("a1", TypeAppareil.ALARME);
 ma_liste_appareils.add(a1);
 CAlarme a2 = new CAlarme ("a2", TypeAppareil.ALARME);
 ma_liste_appareils.add(a2);
 CVoletFenetre v5 = new CVoletFenetre ("v5", TypeAppareil.VOLET);
 ma_liste_appareils.add(v5);
 CAutreAppareil cafe = new CAutreAppareil ("cafe", TypeAppareil.AUTRE_APPAREIL_CAFE);
 ma_liste_appareils.add(cafe);
String bonjour_contenu = " System.out.println( a1" allumee ",); " 
CScenario bonjour = new CScenario("bonjour",bonjour_contenu ); 
  ma_liste_scenarios.add(bonjour);  
String rad1_contenu ="for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"e1\")) appareil.appliquer(TypeActionAppareil.ALLUMER);  " +
"for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"cafe\")) appareil.appliquer(TypeActionAppareil.ETEINDRE);  " 
CScenario rad1 = new CScenario("rad1",rad1_contenu ); 
  ma_liste_scenarios.add(rad1);  
String test3_contenu = " for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"a1\"))
      if (appareil.etatAppareil.equals(TypeEtatAppareil.VOLET))    for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"v\"))
      appareil.appliquer(TypeActionAppareil.OUVRIR);   "  
 " for(CAppareil appareil : this.l_appareils)
    " + 
  " if (appareil.typeAppareil.equals(TypeAppareil.VOLET)) appareil.appliquer(TypeActionAppareil.ETEINDRE);  " 
 CScenario test3 = new CScenario("test3",test3_contenu ); 
  ma_liste_scenarios.add(test3);  
String test4_contenu = " for(CAppareil appareil : this.l_appareils)
    " + 
  " if (appareil.typeAppareil.equals(TypeAppareil.VOLET)) appareil.appliquer(TypeActionAppareil.OUVRIR);  " +
 "for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"cafe\")) appareil.appliquer(TypeActionAppareil.ETEINDRE);  " +
"for(CAppareil appareil : this.l_appareils)
        if (appareil.getNomAppareil().equals(\"e1\")) appareil.appliquer(TypeActionAppareil.OUVRIR);  " 
CScenario test4 = new CScenario("test4",test4_contenu ); 
  ma_liste_scenarios.add(test4);  
 CInterface b3 = new CInterface ("b3", TypeInterface.INTERRUPTEUR);
 ma_liste_interfaces.add(b3);
 CInterface b1 = new CInterface ("b1", TypeInterface.INTERRUPTEUR);
 ma_liste_interfaces.add(b1);
 CInterface zap = new CInterface ("zap", TypeInterface.TELECOMMANDE); 
 ma_liste_interfaces.add(zap);
 CInterface b2 = new CInterface ("b2", TypeInterface.INTERRUPTEUR);
 ma_liste_interfaces.add(b2);
CProgrammation p1 = new CProgrammation(soiree);
CDate p1d1= new CDate(2018,12,24,19,0);
p1.addDate(p1d1);
ma_liste_programmations.add(p1);

