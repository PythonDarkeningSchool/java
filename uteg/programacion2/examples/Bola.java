

import java.awt.*; 
import java.awt.event.*; 
import javax.swing.*; 

public class Bola extends JComponent { 

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private final static int ANCHO = 512, ALTO = 384, DIAMETRO = 20; 
private float x, y, vx, vy; 
private boolean arriba, abajo, izquierda, derecha; 
public Bola(){ 
setPreferredSize(new Dimension(ANCHO, ALTO)); 
x = 10; 
y = 20; 

addKeyListener(new KeyAdapter(){ 

public void keyPressed(KeyEvent e){ 
actualiza(e.getKeyCode(), true); 
} 

public void keyReleased(KeyEvent e){ 
actualiza(e.getKeyCode(), false); 
} 

private void actualiza(int tecla, boolean presionada){ 
switch(tecla){ 
case KeyEvent.VK_UP: 
arriba = presionada; 
break; 

case KeyEvent.VK_DOWN: 
abajo = presionada; 
break; 

case KeyEvent.VK_LEFT: 
if(derecha==true){izquierda = presionada;} 
else {izquierda = presionada;} 
break; 

case KeyEvent.VK_RIGHT: 
derecha = presionada; 
break; 
} 
} 
}); 

setFocusable(true); 
} 

private float clamp(float valor, float min, float max){ 
if(valor > max){return max;} 
if(valor < min){return min;} 
return valor; 
} 

private void fisica(float dt){ 
vx = 0; 
vy = 0; 

if(arriba){ 
if(derecha){ 
vy=-212; 
vx= 212; 
} 

else if(izquierda){ 
vy=-212; 
vx=-212; 
} 
else{ 
vy = -300; 
} 
} 

else if(abajo){ 
if(izquierda){ 
vy= 212; 
vx=-212; 
} 
else if(derecha){ 
vy= 212; 
vx= 212; 
} 
else{ 
vy = 300; 
} 
} 

else if(izquierda){ 
vx =-300; 
} 

else if(derecha){ 
vx= 300; 
} 

x = clamp(x + vx * dt, 0, ANCHO - DIAMETRO); 
y = clamp(y + vy * dt, 0, ALTO - DIAMETRO); 
} 

public void paint(Graphics g){ 
g.setColor(Color.YELLOW); 
g.fillRect(0, 0, ANCHO, ALTO); 

g.setColor(Color.BLUE); 
g.fillOval(Math.round(x)+400, Math.round(y), DIAMETRO, DIAMETRO); 
} 

private void dibuja() throws Exception { 
SwingUtilities.invokeAndWait(new Runnable(){ 
public void run(){ 
paintImmediately(0, 0, ANCHO, ALTO); 
} 
}); 
} 

public void cicloPrincipalJuego() throws Exception { 
long tiempoViejo = System.nanoTime(), tiempoNuevo; 
float dt; 
while (true){ 
tiempoNuevo = System.nanoTime(); 
dt = (tiempoNuevo - tiempoViejo) / 1000000000f; 
tiempoViejo = tiempoNuevo; 
fisica(dt); 
dibuja(); 
} 
} 

public static void main(String[] args) throws Exception { 
JFrame jf = new JFrame("BOLA CON MOVIMIENTO DE TECLAS DIRECCIONALES_____ART"); 
jf.addWindowListener(new WindowAdapter(){ 
public void windowClosing(WindowEvent e){ 
System.exit(0); 
} 
}); 
jf.setResizable(false); 
Bola bola = new Bola(); 
jf.getContentPane().add(bola); 
jf.pack(); 
jf.setVisible(true); 
bola.cicloPrincipalJuego(); 
} 
} 

