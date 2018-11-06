/*
LIC. ARTURO RAMOS ESPINOSA
 Ejercicio 12.23 del libro como (promagramar en java de deitel 5. ed), pero ya
 modificado para que hiciera una animacion con estrellas.
 */
import java.awt.*;
import java.awt.geom.GeneralPath;

import javax.swing.*;
class Lienzo extends Canvas {
        /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		public Lienzo(){
                setBackground(Color.white);
                
        }       
        
        public void paint (Graphics g){
                
                int puntosX[]={55,67,109,73,83,55,27,37,1,43};
                int puntosY[]={0,36,36,54,96,72,96,72,96,54,36,36};
                //esto lo cambia a graphicos de dos dimensiones
                Graphics2D g2d =(Graphics2D)g;
                //se crea el obheto de la estrella
                GeneralPath estrella = new GeneralPath();
                //se establece la coordenada inicialde la ruta generqal
                estrella.moveTo(puntosX[0],puntosY[0]);
                //crear la estrella 
                for (int cuenta=1 ; cuenta< puntosX.length; cuenta++)
                estrella.lineTo(puntosX[cuenta],puntosY[cuenta]);
                estrella.closePath();
                g2d.translate(200,200);
                //este ciclo es para que gire alrededor del origen y dibuje 
                //estrellas en colores aleatorios(y de paso que de como animacion)
                for (int cuenta=1 ; cuenta<= 20; cuenta++){
                        g2d.rotate(Math.PI/10.0);
                        g2d.setColor(new Color((int)(Math.random()*256),
                                                    (int)(Math.random()*256),
                                                    (int)(Math.random()*256)));
                
                g2d.fill(estrella);
                try {
                        Thread.sleep(100);
                }
                catch(Exception e){
                }
                g2d.rotate(Math.PI/10.0);
                        g2d.setColor(new Color((int)(Math.random()*256),
                                                    (int)(Math.random()*256),
                                                    (int)(Math.random()*256)));
                
                g2d.fill(estrella);             
                
                }
        }
}

public class Estrellas {
        public static void main(String[] args) {
                JFrame marco = new JFrame("Estrellas");
                Lienzo lienzo= new Lienzo();
                
                marco.add(lienzo);
                marco.setSize(700,700);
                marco.setVisible(true);
        }

} 
