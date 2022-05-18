//variables
int Pantalla;
int miVariable = 1000;
PImage miImagen;
PImage Avion;
PImage Auto;
float x=-400;
float posX;
float posY;
int estado = 0;
int pantalla = 0;
int valor = 0;
PFont fuente;

void setup() {
  size(400, 400);
  miImagen = loadImage("Person.png");
  Avion = loadImage("Avion.png");
  Auto = loadImage("Auto.png");
  fuente = createFont ("Market Fresh Bold ALL CAPS.ttf", 15);
}

void draw() {
  background(0, 200, 255);
  fill(0);
  rect(0, 0, 400, 100);
  fill(0);
  rect(0, 300, 400, 100);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,10,10);
  image( miImagen, posX, 240, 60, 70);
   posX+=1;
  if (posX > 60) {
    posX = 60;
  }

  //Persona se frena cuando llega a 100
 

//PARTE 2: Con clicks se cambia el titulo
  if (estado==0) {
    //Tecno Multimedial primer click
    textFont (fuente);
    textAlign (CENTER, CENTER);
    text("DreamWorks Pictures", width/1.5, height/2);
    
  }else if (estado==1) {
    //Nombre y comision
    textAlign (CENTER,CENTER);
    text("A Steven Spielberg film", height/2, posY);
    posY+=2;
    if (posY > 200)
    posY = 200;
    
  }else if (estado==2) {
    textAlign(CENTER,CENTER);
    textSize(38);
    text("Catch me if you can", random(200,203), 200);
    
  }else if (estado==3){
    image( Avion, 0, posY, 400, 800);
  posY-=4;
  if (posY < -500)
  posY = -500;
  
  }else if (estado==4){
    fill(235, 201, 9);
    noStroke();
    rect(0, 100, 400, 200);
    image(Auto, x, 100, 400, 200);
    x+=5;
    
  }else if (estado==5){
    fill(235, 201, 9);
    noStroke();
    rect(0, 100, 400, 200);
    textAlign(CENTER,CENTER);
    fill(0);
    textSize(15);
    text("Leonardo DiCaprio & Tom Hanks", x, height/2);
    x+=2;
    if(x > 200)
    x = 200;
    
  }else if (estado==6){
    fill(235, 201, 9);
    noStroke();
    rect(0, 100, 400, 200);
    textAlign(CENTER,CENTER);
    fill(0);
    text("Music by John Williams", width/2, height/2);
    
  }else if (estado==7){
    fill(235, 201, 9);
    noStroke();
    rect(0, 100, 400, 200);
    textAlign(CENTER,CENTER);
    fill(0);
    text("Custome Designer by Mary Zophres", width/2, height/2);
  }

}

  void mousePressed(){
estado++;
  }
  
//Tecnologia Multimedial 1
//David Bedoian
//Comision 3
//Elian Rodriguez
