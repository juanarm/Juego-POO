
 class Cuadro {
  int a;
  int v;

  int rep;
  
 
  Cuadro() {
    this.a=20;
    this.v =30;
    this.rep=0 ;
    }
    
 }
    class Triangulo {
  int a;
      int v;
  int rep;
  
  
  Triangulo() {
    this.a=30;
    this.v =20;
    this.rep=1 ;
    }
    }
  
    class Circulo {
 
  int a;
  int v;
  int rep;
  
  Circulo() {
    this.a=25;
    this.v =25;
    this.rep=2 ;
    }
    }  
    
   
      class Trape {
 
  int a;
  int v;
  int rep;
  
  
  Trape() {
    this.a=29;
    this.v =21;
    this.rep=3 ;
    }
    } 
     class Sexa{
 
  int a;
  int v;
  int rep;
  
  
  Sexa() {
    this.a=31;
    this.v =19;
    this.rep=4;
    }
    }  
    
     class Penta {
  int a;
  int v;
  int rep;
  
 
  Penta() {
    this.a=25;
    this.v =25;
    this.rep=5 ;
    }
    }  
  void display(int display){
    switch(display){
    case 0:
      Cuadro ();
    break;
    case 1 :
      Triangulo();
    break;
    case 2:
    Circulo ();
    break;
    case 3:
    Trape();
    break;
    case 4:
    Sexa();
    break;
    case 5:
    Penta();
    break;
    
    }
  }
  
  void Cuadro(){
    
    fill(#36FF00);
  stroke(0);
  strokeWeight(3);
  quad(200,200,150,300,300,305,350,190);
  stroke(0);
  strokeWeight(2);
  quad (220,220,210,230,235,228,230,220);
  quad (320,215,310,225,335,220,330,215);
  line(250,270,300,250);
  }
  
  void Triangulo(){
 
  fill(#585113);
stroke(#FCE403,90);
strokeWeight(3);
triangle(300,0,200,200,400,200);
stroke(0);
triangle(280,70,270,90,290,90);
triangle(315,70,305,90,325,90);
line(250,150,350,150);
  }
  
   void Circulo(){
  
 fill(#598B3C);
  stroke(#808B7A);
  strokeWeight(3);
  ellipse(200,200,200,200);
  stroke(0);
  ellipse(160,170,20,20);
  ellipse(240,170,20,20);
  line(160,250,240,250);
  }
     void Trape(){
  
   fill(#36FF00);
  stroke(0);
  strokeWeight(3);
  quad(200,200,150,300,300,305,350,190);
  stroke(0);
  strokeWeight(2);
  quad (220,220,210,230,235,228,230,220);
  quad (320,215,310,225,335,220,330,215);
  line(250,270,300,250);
  }
     void Sexa(){
 fill(#A771A1);
  stroke(#7CAA97);
  strokeWeight(3);
  beginShape();    
  vertex(100,100);
  vertex(115,190);
  vertex(90,215);
  vertex(150,230);
  vertex(185,170);
  vertex(145,90);
 endShape(CLOSE);
  stroke(0);
line(135,190,155,195);
 stroke(0);
  strokeWeight(8);
 point(120,140);
 point(155,150);
 
}
     void Penta(){
  fill(#00F2D0);
  stroke(#7CAA97);
  strokeWeight(3);
  beginShape();    
 vertex(100,100);
 vertex (80,250);
 vertex(215,270);
 vertex(240,100);
 vertex(170,160);
 endShape(CLOSE);
 stroke(0);
  strokeWeight(3);
 line(110,150,135,155);
 line(140,230,195,205);
  strokeWeight(15);
point(200, 170);

  }

Cuadro Modelo1;

Triangulo Modelo2;
Circulo Modelo3;
Trape Modelo4;
Sexa Modelo5;
Penta Modelo6;
 //Estos objetos son los que pelean y se inicializan al final de la pantallade selección
 Carta j1() ;
Carta  j2();

 void setup(){
  Modelo1 = new Cuadro();
  
  Modelo2 = new Triangulo();
  Modelo3 = new Circulo();
  Modelo4 = new Trape();
  Modelo5 = new Sexa();
  Modelo6 = new Penta();
}

int pantalla = 0;
 void draw(){
  switch(pantalla){
    case 0:
      inicio();
    break;
    case 1:
      seleccion();
    break;
    case 2:
      pelea();
    break;
    case 3:
      fin();
    break;
  }
}
 void inicio(){
 size(1000,600);
background(0);
for(float i = 0; i<1000; i+=10){
 for(float j = 0; j<600; j+=10){
   noStroke();
   fill(random(255),random(255),random(100));
   ellipse(i,j,10,10);
  } 
}
PFont font;
font = createFont("CenturyGothic-Bold-48.vlw", 32);
textFont(font);
textAlign(CENTER,TOP);
textSize(80);
fill(255);
text("TEMA",500,20);
textAlign(CENTER,TOP);
textSize(60);
fill(255);
text ("POLÍGONOS",500,120);
textAlign(CENTER,TOP);
textSize(80);
fill(255);
text("SUBTEMA",500,200);
textAlign(CENTER,TOP);
textSize(60);
fill(255);
text("REGULARES VS IRREGULARES", 500,300);
textAlign(DOWN,RIGHT);
textSize(60);
text("PAG.1",800,600);
textAlign(CENTER,TOP);
textSize(40);
fill(255);

text("PRESIONA ESPACIO PARA CONTINUAR",500,450);
}


 void seleccion(){
   size(1000,600);
background(200);
for(int i = 0; i<10000; i++){
  float x = random(1000);
  float y = random(600);
  float w = random(50);
  float h = random(55);
  float c = random(255);
  noFill();
  stroke(100,c,c);
  strokeWeight(random(1,5));
  rect(x,y,w,h);
}
PFont font;
font = createFont("CenturyGothic-Bold-48.vlw", 50);
textFont(font);
textAlign(CENTER,TOP);
textSize(40);
fill(255);
text("SELECCIONA LA LETRA DE TU PERSONAJE",500,20);



  Modelo1.display();
  Modelo2.display();
  Modelo3.display();
}
 void pelea(){
  j1.display();
  j2.display();
  if (j1.vida <=0 || J2.vida <=0){
    pantalla = 3;
  }
}
 void fin(){
  if (J1.vida <=0 ){
    J2.display();
  }
  if (J2.vida <=0 ){
    J1.display();
  }
}
 int turnoSeleccion = 1;
int sj1;
int sj2;
int turno = 1;
void keyPressed(){
  switch(pantalla){
    case 0:
      //inicio();
     if (key =='a' || key == 'A'){
       pantalla = 1;
     }
    break;
    case 1:
    
      if (turnoSeleccion == 1){
        if (key == 'q'){
          sj1 = 1;
          turnoSeleccion = 2;
        }
        if (key == 'w'){
          sj1 = 2;
          turnoSeleccion = 2;
        }
        
      }
      if (turnoSeleccion == 2){
        if (key == 'q'){
          sj2 = 1;
          
        }
        if (key == 'w'){
          sj2 = 2;
        }
        
        switch(sj1){
          case 1:
           J1 = new Carta(1,10,1);
          break;
          case 2:
            J1 = new Carta(1,10,2);
          break;
        }
        switch(sj2){
          case 1:
           J2 = new Carta(1,10,1);
          break;
          case 2:
            J2 = new Carta(1,10,2);
          break;
        }
        pantalla =2;
      } 
    break;
    case 2:
      
      if (turno == 1){
        if (key == 'z'){
          J2.vida -= J1.ataque;
          turno = 2;
        }
      }
      if (turno == 2){
        if (key == 'm'){
          J1.vida -= J2.ataque;
          turno = 1;
        }
      }
    break;
    case 3:
      
      
     if (key == 'a'){
       pantalla = 0;
       turno = 1;
      turnoSeleccion = 1;
      sj1 = 0;
      sj2 = 0;
     }
    break;
  }
  
}
