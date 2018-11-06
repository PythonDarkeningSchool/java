import javax.swing.*;//LIBRERIA GENERICA PARA GRAFICOS EN JAVA
import javax.swing.event.*;
import javax.swing.table.*;
import java.util.*;//LIBRERIA DE UTILIDADES GRAFICAS
import java.awt.*;//LIBRERIA PRINCIPAL DE GRAFICOS EN JAVA
import java.awt.event.*;
import java.io.*;//LIBRERIA STANDAR DE ENTRADA Y SALIDA 

class Casa extends JFrame{// INICIA CLASE Casa
	public Casa(){ //INICIA FUNCION CASA PARA VENTANA
		setTitle("Uso de Gr�ficos En java ");//PONEMOS TITULO DE VENTANA
		setSize(1090,480);//TAMA�O DE VENTANA (largo,ancho)
		//setLocation(150,200);//fija el inicio de la aparicion de la ventana a estas coord.
		ini();//llama funcion ini
		}
	boolean ban=true;//declaro variable tipo boolena(verdadero-falso)
	private void  ini(){//inicia funcion privada ini

		getContentPane().setLayout(null);//prepara la ventana para recibir objetos
		
		// los listerners solo aplican para el frame en si
		addWindowListener(new java.awt.event.WindowAdapter()//programa cerrado de ventana
	    {
	      public void windowClosing(java.awt.event.WindowEvent evt)
	      {
	        exitForm(evt);//manda llamar la funci�n sale de la ventana
	      }
	    });
		
	}
	//inicia funcion salir de ventana o del sistema o del programa
	private void exitForm(java.awt.event.WindowEvent evt)//GENERA PRIMERO EL:event_exitForm
	  {
	    System.exit(0);
	  }//termina exitForm
	
	
	public void paint(Graphics g) {//inicia funcion  pintar objetos
		/*
		black, negro 
		blue, azul 
		cyan, azul celeste 
		darkGray, gris oscuro 
		gray, gris 
		green, verde 
		lightGray, gris claro 
		magenta, violeta 
		orange, naranja 
		pink, rosa 
		red, rojo 
		white, blanco 
		yellow, amarillo 
        */
		
		//NOTA: PRIMERO SE DECLARA EL COLOR Y DESPUES SE DIBUJA LA FIGURA
		g.setColor(Color.yellow);	//DECLARO COLOR AZUL
		g.fillRect(0,30,1090,450);//DIBUJA UN RECTANGULO CON CAPACIDAD DE RELLENARSE(FILL=RELLENO)
		
		g.setColor(Color.black);	//color blanco
		g.drawString("ESTA ES UNA CASITA", 230, 80);//dibuja un cadena o letrero en la ventana
		//drawString(cadena,posici�n en coord x, posicion en coord y);
		
	g.setColor(Color.red);	//color rojo
	g.fillRect(350,200,690,250);// rectangulo con relleno
	
	//ciclo para dibujar lineas del color especificado en RGB
	for(int x=350;x<800;x++){
		g.setColor(new java.awt.Color(153, 51, 0));
		g.drawLine(x,200,(x+90),100);//dibuja una l�nea en la ventana
	    }
	
	
	for(int j=800;j<1040;j++){
		g.setColor(new java.awt.Color(153, 51, 0));
		g.drawLine(j,200,(j-80),100);
	}
	
	for(int x=350;x<1020;){
		g.setColor(new java.awt.Color(255,255,255));
		g.drawLine(x,200,x,450);
	x=x+20;
	}
	
	
	g.setColor(new java.awt.Color(153, 51, 0));
	g.fillRect(400,250,100,200);
	
	
	g.setColor(new java.awt.Color(153, 91, 0));
	g.drawRect(405,255,90,190);//dibuja rectangulo sin relleno
	g.drawRect(415,280,70,70);
	g.drawRect(415,380,70,70);
	g.fillArc(475,355,20,20,0,360);//dibuja arco con color
	//fillArc: coord de rectangulo imaginario contenedor de arco,ang_inicial,ang_final

	
	g.setColor(Color.BLACK);
	g.fillArc(425,125,30,60,0,360);

	g.drawLine(530,200,440,100);
	g.drawLine(530,200,530,450);
	g.drawLine(531,200,441,100);
	g.drawLine(531,200,531,450);
	g.drawLine(532,200,442,100);
	g.drawLine(532,200,532,450);
	
	
	g.setColor(Color.BLUE);	
	g.fillRect(650,220,100,100);
//	Aqui termina el codigo para La Casa....	
	
	
//codigo para el arbol....
	g.setColor(new java.awt.Color(153, 51, 0));
	g.fillRect(100,290,30,180);
	for(int y=50;y<100;){
		g.setColor(new java.awt.Color(0, 120, 0));
	/*
	    //EXPLICACION DE PARAMETROS DE drawArc() 
	 	x= Coordenada x de la esquina superior izquierda del rect�ngulo que define la elipse. 

		y= Coordenada y de la esquina superior izquierda del rect�ngulo que define la elipse. 

		width= Ancho del rect�ngulo que define la elipse. 

		height= Alto del rect�ngulo que define la elipse. 

		startAngle= �ngulo medido en grados en sentido de las agujas del reloj desde el eje x hasta el punto inicial del arco. 

		sweepAngle= �ngulo medido en grados en sentido de las agujas del reloj desde el par�metro startAngle hasta el punto final del arco. 
*/

		g.drawArc((y+1),190,120,80,10,60);
		g.setColor(new java.awt.Color(0, 115, 0));
		g.drawArc((y+2),210,100,90,10,70);
		g.setColor(new java.awt.Color(0, 120, 0));
		g.drawArc((y+3),230,90,100,10,80);

		g.setColor(new java.awt.Color(0, 120, 0));
		g.drawArc((y-4),199,70,90,100,60);
		g.setColor(new java.awt.Color(0, 115, 0));
		g.drawArc((y-4),219,70,90,100,70);
		g.setColor(new java.awt.Color(0, 120, 0));
		g.drawArc((y-4),239,70,90,100,90);
		g.setColor(new java.awt.Color(0, 105, 0));
		g.fillArc(y,195,120,90,10,360);
		g.fillArc((y+5),215,90,90,100,360);
		g.fillArc((y+9),235,100,90,100,350);
	y=y+5;
	}
	
	
	g.setColor(new java.awt.Color(193, 81, 0));
	g.drawArc(101,322,18,40,10,310);
	g.setColor(new java.awt.Color(183, 91, 0));
	g.drawArc(102,324,24,39,50,290);
	g.setColor(new java.awt.Color(173, 61, 0));
	g.drawArc(104,325,26,41,80,330);
//	Aqui Termina el codigo para el arbol....	
	
//este codigo es para el pasto....	
	g.setColor(new java.awt.Color(0, 80, 0));
	g.fillRect(0,450,1065,25);	
for(int y=0;y<950;){
	g.setColor(new java.awt.Color(0, 90, 0));
	g.drawArc(y,432,120,80,0,50);
	g.setColor(new java.awt.Color(0, 115, 0));
	g.drawLine(y,448,y,465);
y=y+5;
}

for(int x=50;x<1050;){
	g.setColor(new java.awt.Color(0, 100, 0));
	g.drawArc(x,445,70,90,100,60);
	g.setColor(new java.awt.Color(0, 110, 0));
	g.drawLine(x,447,x,465);
x=x+5;
}

//aqui termina el codigo del pasto


	  
	}
	
	public static void main(String[] args) {
		new Casa().setVisible(true);
	}
	

}