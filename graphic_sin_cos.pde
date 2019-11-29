//code by Matias caparros
//UTN FRM Argentina, Mendoza
float x; //declaracion de variables para el resto del programa
float i;
float seno;
float coseno;
float seno2;
float coseno2;
float grados;
float largoseno;
float largocoseno;
float puntoseno;
float puntocoseno;
float senodibujo;
float atrasado;
float senoatrasado;
float tangente;
PFont Fuente;
//float y;

void setup() {
  size(1300, 500); //tamaño de la ventana
  x = 0; //x=0, comenzamos contando desde 0
  //y = 0;
  Fuente = loadFont("BrowalliaUPC-34.vlw"); //selecciono la fuente
}

void draw() {
  background(51); //Se coloca el fondo que se vaya a utilizar

  //calculo del seno y del coseno
  seno=sin(x);
  coseno=cos(x);

  seno2=sin(x-(PI/2));
  coseno2=cos(x-(PI/2));
  //multiplico el seno y el coseno por 100 para agrandar el tamaño del circulo
  largoseno=seno*100;
  largocoseno=coseno*100;
  //dibujo los circulos en los que iran las agujas
  ellipse(130, 250, 100, 100);
  ellipse(130, 400, 100, 100);

  //ellipse(130,250,largoseno,largoseno);
  //ellipse(130,400,largocoseno,largocoseno);

  //dibujado de lineas
  puntoseno = (largoseno/2)+250;
  puntocoseno = (largocoseno/2)+400;


  //fill(153); //Color de relleno de figuras (opcional)
  textFont(Fuente); //Aqui llamamos a la fuente
  textSize(32); //tamaño del texto
  //Textos arriba de los circulos
  text("Seno", 100, 180); 
  text("Coseno", 100, 330);
  //Textos en la esquina
  text("Seno de la función: ", 20, 80);
  text("Coseno de la función: ", 20, 110);
  text("Ángulo: ", 20, 50);
  text("rad / ", 150, 50);
  text("grados", 275, 50);
  //Numeros variables según angulo
  text(x, 90, 50); //angulo en radianes
  grados=(180*x)/PI; //conversion del angulo a grados
  text(grados, 190, 50);
  text(seno, 195, 80);
  text(coseno, 220, 110); /*
//calculo del seno y del coseno
   seno=sin(x);
   coseno=cos(x);
   //multiplico el seno y el coseno por 100 para agrandar el tamaño del circulo
   largoseno=seno*100;
   largocoseno=coseno*100;
   //dibujo nuevamente el elipse
   //ellipse(130,250,largoseno,largoseno);
   ellipse(130,400,largocoseno,largocoseno);
   //dibujado de lineas
   puntoseno = (largoseno/2)+250;
   puntocoseno = (largocoseno/2)+400; */

  //stroke(255);
  //
  //line(130,puntoseno,250,puntoseno);
  //line(130,puntocoseno,250,puntocoseno);
  //stroke(0);
  //strokeWeight(1);

  //Dibujado de la aguja del seno

  stroke(15);
  strokeWeight(2);
  line(130, 250, 130+(coseno*50), 250-(seno*50));
  stroke(0);
  strokeWeight(1);

  //Dibujado de la aguja del coseno

  stroke(15);
  strokeWeight(2);
  line(130, 400, 130+(coseno2*50), 400-(seno2*50));
  stroke(0);
  strokeWeight(1);

  //Dibujado del lapiz del seno

  stroke(15);
  strokeWeight(2);
  line(130+(coseno*50), 250-(seno*50), 300, 250-(seno*50));
  stroke(0);
  strokeWeight(1);

  //Dibujado del lapiz del coseno

  stroke(15);
  strokeWeight(2);
  line(130+(coseno2*50), 400-(seno2*50), 300, 400-(seno2*50));
  stroke(0);
  strokeWeight(1);

  //Dibujado de la cuadricula

  stroke(#FFFFFF);
  line(300, 200, 300, 300); //linea vertical para el seno
  line(300, 300, 625, 300); //linea horizontal para el seno
  line(300, 350, 300, 450); //linea verical para el coseno
  line(300, 450, 625, 450); //linea horizontal para el coseno
  stroke(0);

  //Dibujado de la funcion seno



  for (i=0; i < 2*PI; i = i+0.01) {

    //senodibujo = sin(i+x);
    //atrasado = x-0.01;
    //senoatrasado = sin((i+x)-atrasado);
    //line((10+i)*10,50*sin(i),(10+(i-0.01))*10,100+(50*sin(i-0.01)));
    //line(100+(50*(i),200+(50*sin(i)),100+(50*((i)-0.01)),200+(50*sin((i)-0.01)))));
    stroke(255);
    strokeWeight(2);
    line(300+(50*(i)), 250+(50*-sin(i+x)), 300+(50*((i)-0.01)), 250+(50*(-sin((i+x)-0.01))));
    //line(300+(50*(i)),200+(50*senodibujo),300+(50*(i-0.01)),200+(50*senoatrasado));
  }

  //Dibujado de la funcion coseno
  for (i=0; i < 2*PI; i = i+0.01) {

    //line((10+i)*10,50*sin(i),(10+(i-0.01))*10,100+(50*sin(i-0.01)));
    //line(100+(50*(i),200+(50*sin(i)),100+(50*((i)-0.01)),200+(50*sin((i)-0.01)))));
    stroke(255);
    strokeWeight(2);
    line(300+(50*(i)), 400+(50*cos(i+x)), 300+(50*((i)-0.01)), 400+(50*(cos((i+x)-0.01))));
    //line(300+(50*(i)),200+(50*senodibujo),300+(50*(i-0.01)),200+(50*senoatrasado));
  }

  //Dibujado de puntos sobre los lapices y los circulos graficadores

  ellipse(300, 250-(seno*50), 5, 5); //punto del lapiz del seno
  ellipse(300, 400-(seno2*50), 5, 5); //punto del lapiz del coseno
  fill(153);
  stroke(153);
  ellipse(130+(coseno*50), 250-(seno*50), 5, 5); //punto del circulo del seno
  ellipse(130+(coseno2*50), 400-(seno2*50), 5, 5); //punto del circulo del coseno

  stroke(255);
  fill(255);

  //Calculo de la tangente

  text("Tangente de la funcion: ",20,140);
  text("Tangente",1160,200);
  tangente = tan(x);
  text(tangente, 233, 140);

  //Dibujo del circulo de la tangente

  ellipse(1200, 250, 50, 50);
  


  stroke(15);
  strokeWeight(2);
  //line(1000,250,1000+(coseno*50),250-(seno*50));
  //line(1050, 500, 1050, 0); //Linea de calibracion para la tangente
  //line(950,500,950,0); //Linea de calibracion para la tangente
  
  //line(1200, 250, 1250, 250-(tangente*50)); //linea tangente derecha
  line(1200, 250, 1150, 250-(-tangente*50)); //Linea tangente izquierda
  
  //Dibujado de la funcion tangente
  
  for (i=0; i < 2*PI; i = i+0.01) {
  

    //line((10+i)*10,50*sin(i),(10+(i-0.01))*10,100+(50*sin(i-0.01)));
    //line(100+(50*(i),200+(50*sin(i)),100+(50*((i)-0.01)),200+(50*sin((i)-0.01)))));
    stroke(255);
    strokeWeight(2);
    line(832+(50*(i)), 250+(50*tan(i+x)), 832+(50*((i)-0.01)), 250+(50*(tan((i+x)-0.01))));
    //line(300+(50*(i)),200+(50*senodibujo),300+(50*(i-0.01)),200+(50*senoatrasado));
  }
  
  ellipse(1150, 250-(-tangente*50),5,5); //puntitos del lapiz de dibujo de tangente
  ellipse(832,250-(-tangente*50),5,5); //puntito izquierdo

//Dibujo de los ejes de la tangente
 strokeWeight(1);
 line(832,0,832,1000); //linea vertical izquierda
 line(1150,0,1150,1000); //Linea vertical derecha
// line(832,250,1150,250); //linea del eje central
 
 


//  line(1000, 250, 1050, 250);
  stroke(0);
  strokeWeight(1);




  //creditos
  textSize(22); //tamaño del texto
  //textFont("BrowalliaNew-Italic.vlw");
  text("Matías Caparros", 1190, 490); 








  x=x+(0.01); //intervalo de cambio de angulo
  //cuando llegamos a 2pi rad o 360 grados el angulo vuelve a 0
  if (x>2*PI) {
    x=0;
  }
  delay(1); //demora del programa en volver a calcular en ms
}
