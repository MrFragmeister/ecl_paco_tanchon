
# ====================== CLASSE BIBLIOTHEQUE ===================================
class Bibliotheque:
    def __init__(self,name):
        self.__name=name
        self.__liste_livres = []
        self.__liste_lecteurs = []
        self.__liste_emprunts = []

    def getLivres(self):
        for livre in self.__liste_livres:
            print(livre)
            
    def getLecteurs(self):
        for lecteur in self.__liste_lecteurs:
            print(lecteur)
    
    def affiche_livres(self):
        for livre in self.__liste_livres:
            print(livre)
            
    def affiche_lecteurs(self):
        for lecteur in self.__liste_lecteurs:
            print(lecteur.getName(),lecteur.getAdresse(),lecteur.getId())
            
    def affiche_emprunts(self):
        for emprunt in self.__liste_emprunts:
            print(emprunt.getIdLivre(), emprunt.getIdLecteur())
            
    # ---------------------- Gestion des lecteurs ------------------------------
    def ajout_lecteur(self, nom, prenom, adresse, identifiant):
        lecteur_temp = Lecteur(nom,prenom,adresse,identifiant)
        self.__liste_lecteurs += [lecteur_temp]
        
    def retrait_lecteur(self, identifiant):
        lecteur=self.chercher_lecteur_numero(identifiant)
        if lecteur!=None:
            if lecteur.getNbEmprunt()==0:
                self.__liste_lecteurs.remove(lecteur)
                return True
        return False
            
    def chercher_lecteur_numero(self,identifiant):
        for lecteur in self.__liste_lecteurs:
            if lecteur.getId()==identifiant:
                return lecteur
        return None
                
    def chercher_lecteur_nom(self, nom, prenom):
        for lecteur in self.__liste_lecteurs:
            if lecteur.getName()==(nom,prenom):
                return lecteur
        return None
    # --------------------------------------------------------------------------
    
    # ------------------------ Gestion des livres ------------------------------
    def ajout_livre(self, titre, auteur, identifiant, nb_exemplaires):
        """
        Fonction d'ajout de livres dans la bibliotheque
        """
        livre_temp=Livre(titre, auteur, identifiant, nb_exemplaires)
        self.__liste_livres+=[livre_temp]
        
    def retrait_livre(self, identifiant, nombre=-1):
        """
        Fonction de suppression de livre dans la bibliotheque. Si l'argument 
        nombre est positif, il représente le nombre de livres à enlever
        Renvoie un booléen traduisant le succes de l'opération.
        """
        livre=self.chercher_livre_numero(identifiant)
        if livre!=None:
            if livre.getNbEmprunt()==0:
                if nombre<0 or nombre>=livre.getQtt():
                    self.__liste_livres.remove(livre)
                else:
                    livre.setQtt(livre.getQtt()-nombre)
                return True
        return False
        
    def chercher_livre_numero(self,identifiant):
        """
        Fonction qui renvoie l'objet livre dont l'identifiant est demandé.
        Elle renvoie None si ce livre n'existe pas
        """
        
        for livre in self.__liste_livres:
            if livre.getId()==identifiant:
                return livre
        return None
                
    def chercher_livre_titre(self, titre):
        """
        Fonction qui renvoie l'objet livre dont le titre est demandé.
        Elle renvoie None si ce livre n'existe pas
        """
        for livre in self.__liste_livres:
            if livre.getTitle()== titre:
                return livre
        return None
    # --------------------------------------------------------------------------
    
    # ------------------------ Gestion des emprunts ------------------------------
    def emprunt_livre(self, id_lecteur, id_livre):
        
        lecteur_temp = self.chercher_lecteur_numero(id_lecteur)
        livre_temp = self.chercher_livre_numero(id_livre)
        
        if isinstance(lecteur_temp,Lecteur) and isinstance(livre_temp,Livre):
            existant = self.chercher_emprunt_id(id_lecteur ,id_livre)
            if existant==None and livre_temp.getDispo()>0:
                emprunt_temp = Emprunt(id_lecteur, id_livre)
                self.__liste_emprunts += [emprunt_temp]
                livre_temp.addEmprunt(emprunt_temp)
                lecteur_temp.addEmprunt(emprunt_temp)
                print("Emprunt effectué")
                return True
        print("Ce livre n'existe pas ou ne peut pas etre emprunté")
        return False
                
    def chercher_emprunt_id(self, id_lecteur, id_livre):
        for emprunt in self.__liste_emprunts:
            if( emprunt.getIdLecteur() == id_lecteur and emprunt.getIdLivre() == id_livre):
                return emprunt
        return None
        
        
    def retour_livre(self, id_lecteur, id_livre):
        emprunt=self.chercher_emprunt_id(id_lecteur, id_livre)
        if emprunt!=None:
            lc=self.chercher_lecteur_numero(id_lecteur)
            lv=self.chercher_livre_numero(id_livre)
            self.__liste_emprunts.remove(emprunt)
            lv.removeEmprunt(emprunt)
            lc.removeEmprunt(emprunt)
            print("Livre rendu")
            return True
        print("Impossible d'effectuer ce retour")
        return False
        
    # --------------------------------------------------------------------------
    
# ==============================================================================


# =========================== CLASSE LECTEUR ===================================
class Lecteur:
    def __init__(self, nom, prenom, adresse, identifiant):
        assert(isinstance(identifiant, int) and isinstance(nom,str) and isinstance(prenom, str) and isinstance(adresse,str))
        self.__nom = nom
        self.__prenom = prenom
        self.__adresse = adresse
        self.__id = identifiant
        self.__liste_emprunts=[]
        
    def getName(self):
        return (self.__nom, self.__prenom)
    
    def getId(self):
        return self.__id
        
    def getNbEmprunt(self):
        return len(self.__liste_emprunts)
        
    def getAdresse(self):
        return self.__adresse
    
    def addEmprunt(self, emprunt):
        self.__liste_emprunts += [emprunt]
        
    def removeEmprunt(self, emprunt):
        self.__liste_emprunts.remove(emprunt)
    
    def __str__(self):
        return self.__nom + ", " + self.__prenom + ", " + self.__adresse + ", " + str(self.__id)
# ==============================================================================



# ============================= CLASSE LIVRE ===================================
class Livre:
    def __init__(self, titre, auteur, identifiant, qtt_totale):
        assert(isinstance(identifiant,int) and isinstance(titre,str) and isinstance(auteur,str) and isinstance(qtt_totale,int))
        self.__titre = titre
        self.__auteur = auteur
        self.__id = identifiant
        self.__qtt = qtt_totale
        self.__liste_emprunts=[]
        
    def getTitle(self):
        return self.__titre
        
    def getAuteur(self):
        return self.__auteur
        
    def getId(self):
        return self.__id
        
    def getNbEmprunt(self):
        return len(self.__liste_emprunts)
        
    def getDispo(self):
        return self.__qtt - len(self.__liste_emprunts)
        
    def getQtt(self):
        return self.__qtt
        
    def setQtt(self,qtt):
        self.__qtt=qtt
        
    def addEmprunt(self, emprunt):
        self.__liste_emprunts += [emprunt]
        
    def removeEmprunt(self, emprunt):
        self.__liste_emprunts.remove(emprunt)
        
    def __str__(self):
        return self.__titre + ", " + self.__auteur + ", " + str(self.__id) + ", " + str(self.__qtt)
# ==============================================================================


# =========================== CLASSE EMPRUNT ===================================        
class Emprunt:
    def __init__(self, id_lecteur, id_livre):
        assert( isinstance(id_livre,int) and isinstance(id_lecteur,int))
        self.__idlivre = id_livre
        self.__idlecteur = id_lecteur
    
    def getIdLecteur(self):
        return self.__idlecteur
        
    def getIdLivre(self):
        return self.__idlivre
# ==============================================================================

