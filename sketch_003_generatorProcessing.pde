PImage cadre_0;
PImage illustration_3;
PImage logo_4;
//PImage note_5;
PImage pagination_6;
PImage ornement_7;
//PImage premdern_8;
PImage texte_9;
PImage titre_10;
PImage ornementBis_11;

int nbCadre;
int nbIllu;
int nbLogo;
//int nbNote;
int nbPage;
int nbOrn;
//int nbPremDern;
int nbTexte;
int nbTitre;
int nbOrnBis;

int widthCadre;
int widthIllu;
int widthLogo;
//int widthNote;
int widthPage;
int widthOrn;
//int widthPremDern;
int widthTexte;
int widthTitre;
int widthOrnBis; 

int heightCadre;
int heightIllu;
int heightLogo;
//int heightNote;
int heightPage;
int heightOrn;
//int heightPremDern;
int heightTexte;
int heightTitre;
int heightOrnBis; 

int counter;
boolean rightPage;


void setup() {
  size(1890, 2835);
  counter = 0;
  frameRate(1);

  rightPage = true;

  // on annonce combien d'images il y a par dossier     
  nbCadre = 705;
  nbIllu = 255;
  nbLogo = 231;
  //nbNote = ;
  nbPage = 341;
  nbOrn = 94;
  //nbPremDern = 28;
  nbTexte = 542;
  nbTitre = 331;
  nbOrnBis = 383;
}



void draw() {

  createPage();
}

void initialiseImages() {

  if (counter < nbCadre) {
    cadre_0 = loadImage("imgs/1072055650/hierarchieDossiers/cadre/" + counter + ".jpg");
  } else {
    nbCadre = 0;
  }

  if (counter < nbIllu) {
    illustration_3 = loadImage("imgs/1072035570/hierarchieDossiers/illustration/" + counter + ".jpg"); // 727 illu aussi
  } else {
    nbIllu = 0;
  }

  if (counter < nbLogo) {
    logo_4 = loadImage("imgs/1072055762/hierarchieDossiers/logoEllementsDeCom/" + counter + ".jpg");
  } else {
    nbLogo = 0;
  }

  //if (counter < nbNote) {
  //note_5 = loadImage("imgs/1072055750/hierarchieDossiers/note/" + counter + ".jpg");
  //} else {
  //  nbNote = 1000;
  //}

  if (counter < nbPage) {
    pagination_6 = loadImage("imgs/1072055779/hierarchieDossiers/numerotationPage/" + counter + ".jpg");
  } else {
    nbPage = 0;
  }

  if (counter < nbOrn) {
    ornement_7 = loadImage("imgs/1072055655/hierarchieDossiers/ornement/" + counter + ".jpg");
  } else {
    nbOrn = 0;
  }

  //if (counter < nbPremDern) {
  //premdern_8 = loadImage("imgs/1072035579/hierarchieDossiers/premiereEtDernierePageDuLivret/" + counter + ".jpg");
  //} else {
  //  nbPremDern = 1000;
  //}

  if (counter < nbTexte) {
    texte_9 = loadImage("imgs/1072055727/hierarchieDossiers/texte/" + counter + ".jpg");
  } else {
    nbTexte = 0;
  }

  if (counter < nbTitre) {
    titre_10 = loadImage("imgs/1072055694/hierarchieDossiers/titreChapitre/" + counter + ".jpg");
  } else {
    nbTitre = 0;
  }

  if (counter < nbOrnBis) {
    ornementBis_11 = loadImage("imgs/1072055632/hierarchieDossiers/ornement/" + counter + ".jpg");
  } else {
    nbOrnBis = 0;
  }

  // au premier tour on récupère la taille des images
  if (counter == 0) {
    widthCadre = cadre_0.width;
    widthIllu = illustration_3.width;
    widthLogo = logo_4.width;
    //widthNote = note_5.width;
    widthPage = pagination_6.width;
    widthOrn = ornement_7.width;
    //widthPremDern = premdern_8.width;
    widthTexte = texte_9.width;
    widthTitre = titre_10.width;
    widthOrnBis = cadre_0.width; 

    heightCadre = cadre_0.height;
    heightIllu = illustration_3.height;
    heightLogo = logo_4.height;
    //heightNote = note_5.height;
    heightPage = pagination_6.height;
    heightOrn = ornement_7.height;
    //heightPremDern = premdern_8.height;
    heightTexte = texte_9.height;
    heightTitre = titre_10.height;
    heightOrnBis = ornementBis_11.height;
  }
}

void createPage() {

  background(255);

  initialiseImages();

  blendMode(MULTIPLY);



  //// image(fond, 0, (-196));
  //blendMode(MULTIPLY); // mode produit


  if (rightPage) {

    // page de droite
    if (nbCadre != 0) {
      image(cadre_0, 0, (height-heightCadre)/2);
    }

    if (nbIllu != 0) {
      image(illustration_3, 0, (height-heightIllu)/2);
    }

    if (nbLogo != 0) {
      image(logo_4, 0, (height-heightLogo)/2);
    }

    //  if (nbNote != 1000) {
    //  image(note_5, 0, (height-heightNote)/2);
    //  }

    if (nbPage != 0) {
      image(pagination_6, 0, (height-heightPage)/2);
    }

    if (nbOrn != 0) {
      image(ornement_7, 0, (height-heightOrn)/2);
    }

    //if (nbPremDern != 1000) {
    //image(premdern_8, 0, (height-heightPremDern)/2);
    //}

    if (nbTexte != 0) {
      image(texte_9, 0, (height-heightTexte)/2);
    }

    if (nbTitre != 0) {
      image(titre_10, 0, (height-heightTitre)/2);
    }

    if (nbOrnBis != 0) {
      image(ornementBis_11, 0, (height-heightOrnBis)/2);
    }

    rightPage = false;
  } else {
    // page de gauche

    if (nbCadre != 0) {
      image(cadre_0, width-widthCadre, (height-heightCadre)/2);
    }

    if (nbIllu != 0) {
      image(illustration_3, width-widthIllu, (height-heightIllu)/2);
    }

    if (nbLogo != 0) {
      image(logo_4, width-widthLogo, (height-heightLogo)/2);
    }

    //  if (nbNote != 1000) {
    //  image(note_5, width-widthNote, (height-heightNote)/2);
    //  }

    if (nbPage != 0) {
      image(pagination_6, width-widthPage, (height-heightPage)/2);
    }

    if (nbOrn != 0) {
      image(ornement_7, width-widthOrn, (height-heightOrn)/2);
    }

    //if (nbPremDern != 1000) {
    //image(premdern_8, width-widthPremDern, (height-heightPremDern)/2);
    //}

    if (nbTexte != 0) {
      image(texte_9, width-widthTexte, (height-heightTexte)/2);
    }

    if (nbTitre != 0) {
      image(titre_10, width-widthTitre, (height-heightTitre)/2);
    }

    if (nbOrnBis != 0) {
      image(ornementBis_11, width-widthOrnBis, (height-heightOrnBis)/2);
    }

    rightPage = true;
  }




  counter++;

  saveFrame("line-####.png");
}


void mousePressed() {

  // createPage();
}