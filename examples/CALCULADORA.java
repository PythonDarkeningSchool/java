//CALCULADORA PARCIAL
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.math.*;
class CALCULADORA extends JFrame {
	private JTextField pantalla; // La "J" se pone cuando esta "swing"
private JButton cero, uno, dos, tres, cuatro,
suma, resta, igual, punto, C,bCE,
raiz, cuadrado;
private int ultima=0;
private boolean puntodecimal;
private byte numoperandos;
private double operando1, operando2;
private char op=0;

CALCULADORA() // Esto es el contructor de la clase y se tiene que llamar igual que la clase
{
	setTitle("CALCULADORA EN JAVA ");
	setSize(400,410);
	setResizable(false);
	iniciar();
}
private void iniciar()
{
	getContentPane().setLayout(null);
	pantalla=new JTextField("");
	pantalla.setFont(new Font("Arial ", 1,16));
	pantalla.setHorizontalAlignment(SwingConstants.RIGHT);
	pantalla.setBounds(20,30,345,40);
	pantalla.setText(".0");
	pantalla.setEditable(false);
	pantalla.setBackground(new Color (0,255,0));
	getContentPane().add(pantalla);
	
	cuatro=new JButton("4");
	cuatro.setToolTipText("Presiona aqui para que aparezca el numero 4");
	cuatro.setBounds(20,200,60,45);
	cuatro.setMnemonic('4');
	getContentPane().add(cuatro);
	
	uno=new JButton("1");
	uno.setToolTipText("Presiona aqui para que aparezca el numero 1");
	uno.setBounds(20,250,60,45);
	uno.setMnemonic(1);
	getContentPane().add(uno);
	
	dos=new JButton("2");
	dos.setToolTipText("Presiona aqui para que aparezca el numero 2");
	dos.setBounds(90,250,60,45);
	dos.setMnemonic(2);
	getContentPane().add(dos);
	
	tres=new JButton("3");
	tres.setToolTipText("Presiona aqui para que aparezca el numero 3");
	tres.setBounds(160,250,60,45);
	tres.setMnemonic(3);
	getContentPane().add(tres);
	
	cero=new JButton("0");
	cero.setToolTipText("Presiona aqui para que aparezca el numero 0");
	cero.setBounds(20,300,60,45);
	cero.setMnemonic(0);
	getContentPane().add(cero);
	
	punto=new JButton(".");
	punto.setToolTipText("Presiona aquí para poner PUNTO");
	punto.setBounds(90,300,60,45);
	punto.setMnemonic('.');
	getContentPane().add(punto);
	
	C=new JButton("C");
	C.setToolTipText("Presiona aquí para BORRAR");
	C.setBounds(300,150,60,45);
	C.setMnemonic('C');
	getContentPane().add(C);
	
	suma=new JButton("+");
	suma.setToolTipText("Presiona aquí para SUMAR");
	suma.setBounds(230,250,60,45);
	suma.setMnemonic('+');
	getContentPane().add(suma);
	
	resta=new JButton("-");
	resta.setToolTipText("Presiona aquí para RESTAR");
	resta.setBounds(300,250,60,45);
	resta.setMnemonic('-');
	getContentPane().add(resta);
	
	igual=new JButton("=");
	igual.setToolTipText("Presiona aquí para OBTENER RESULTADO");
	igual.setBounds(300,300,60,45);
	igual.setMnemonic('=');
	getContentPane().add(igual);
	
	raiz=new JButton("RAIZ");
	raiz.setToolTipText("Presiona aquí para obtener RAIZ");
	raiz.setBounds(230,100,60,45);
	getContentPane().add(raiz);
	
	cuadrado=new JButton("CUA");
	cuadrado.setToolTipText("Presiona aquí para obtener CUADRADO DEL NUMERO");
	cuadrado.setBounds(160,300,60,45);
	getContentPane().add(cuadrado);
	
	
	
addWindowListener(new WindowAdapter(){
public void windowClosing(WindowEvent evt){
System.exit(0);}
public void windowOpened(WindowEvent evt){
foco(evt); }});
	
    cero.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonAction(evt); } } );
	
	uno.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonAction(evt); } } );

	dos.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonAction(evt); } } );

	tres.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonAction(evt); } } );
	
	cuatro.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonAction(evt); } } );


	C.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		botonC(evt); } } );
	
	suma.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		OperacionAction(evt); } } );

	resta.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		OperacionAction(evt); } } );

	igual.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		OperacionAction(evt); } } );

	punto.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		puntoDecAction(evt); } } );

		
	cuadrado.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		potencia(evt); } } );
	
	raiz.addActionListener(new ActionListener(){
	public void actionPerformed(ActionEvent evt){
		raiz_cuadrada(evt); } } );
	
		
		getRootPane().setDefaultButton(C);
}
		
private void foco(WindowEvent evt){
bCE.requestFocus();}

private void OperacionAction(ActionEvent evt){
	JButton obj=(JButton)evt.getSource();
	String texto=obj.getText();
	if(ultima==1)
		numoperandos++;
	if(numoperandos==1){
		operando1=Double.parseDouble(pantalla.getText());
		}
	else if(numoperandos==2)
	{
		operando2=Double.parseDouble(pantalla.getText());
	switch(op){
	case'+':operando1+=operando2;break;
	case'-':operando1-=operando2;break;
	case'*':operando1*=operando2;break;
	case'/':operando1/=operando2;break;
	case'=':operando1=operando2;break;
	case'%':operando1*=(operando2/100);break;
	}
	
	pantalla.setText(Double.toString(operando1));
	numoperandos=1;}
	op=texto.charAt(0);
	ultima=2;
	}
	private void botonAction(ActionEvent evt){
	JButton aux=(JButton)evt.getSource();
	String texto=aux.getText();
	if(ultima!=1)
	{
		if(texto.compareTo("0")==0)
			return;
		pantalla.setText("");
		ultima=1;
		puntodecimal=false;
	}
	pantalla.setText(pantalla.getText()+texto);
}
 private void puntoDecAction(ActionEvent evt)
 {
	 if(ultima!=1)
	 {
		pantalla.setText("0.");
		ultima=1;
	 }
 
	 else if(puntodecimal==false)
		 pantalla.setText(pantalla.getText()+".");
	 puntodecimal=true;
	 
 }
 private void botonC(ActionEvent evt)
 {
	 pantalla.setText("0.");
   ultima=0;
   puntodecimal=false;
   op=0;
   numoperandos=0;
   operando1=0;
   operando2=0;
   
 }
 private void potencia(ActionEvent evt){
	 double respot;
	 respot=Double.parseDouble(pantalla.getText());
	 respot=respot*respot;
	 pantalla.setText(""+respot);
 }
 
 private void raiz_cuadrada(ActionEvent evt){
	 double resraiz;
	 resraiz=Double.parseDouble(pantalla.getText());
	 if(resraiz<0)
	 pantalla.setText("E");
	 else if (resraiz>0)
		 resraiz=Math.sqrt(resraiz);
	 pantalla.setText(""+resraiz);
 }


 public static void main(String args[]){

	 CALCULADORA obj=new CALCULADORA();
	 obj.setVisible(true);
	 
 }
}


