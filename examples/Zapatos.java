import java.awt.*;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import java.awt.print.*;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import java.awt.print.PrinterJob;
import javax.swing.*;
import java.awt.GridBagLayout;
import javax.swing.JRadioButton;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemListener;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JButton;
import javax.swing.UIManager;
import java.awt.Dimension;


public class Zapatos extends JFrame implements Printable{
	
	static JFrame frame;
	

	 
	
	
	//declaracion de variables
	private Frame ventana;
    private Label lbtitulo,lbcategoria,lbmodelo,lbcolor;
    private JRadioButton RBdama,RBzapatos,RBfal,RBpan,RBblu,RBcamiseta,RBcuello,RBnegro,RBcafe,RBrojo,RBblanco,RBrosa,RBamarillo;
    private JComboBox CBnumero,CBtalla;
    private JButton bimprime,bmostrar;
    private PrinterJob imagen;
  
    
   
    
    
    
    public Zapatos()//inicia constructor
    {
    	 
    	setTitle("TIENDA DE ROPA");//pone el titulo en la ventana
    	
    	inicio();//se llama la funcion iniciar
    	
     
    }
    
    
    
 public void inicio()
    
    {//inicio inicio
//	 obtener panel de contenido y establecer su esquema
      Container contenedor = getContentPane();
	  contenedor.setLayout( new FlowLayout() );
    	
     getContentPane().setLayout(null);//prepara el contenido con un enrejado toma el contenido y lo agrega al panel
     ventana    =  new Frame ();
     
        lbtitulo = new Label();
		lbtitulo.setBounds(new Rectangle(14, 15, 102, 16));
		lbtitulo.setFont(new Font("Verdana", 1,12));
		lbtitulo.setForeground(Color.green);
		res_den.setBackground(new Color (0,0,0)); 
		lbtitulo.setText("ELIGE TU OPCION");
		getContentPane().add(lbtitulo);
        
        lbmodelo = new Label();
		lbmodelo.setBounds(new Rectangle(213, 15, 55, 27));
		lbmodelo.setFont(new Font("Verdana", 1,12));
		lbmodelo.setForeground(Color.red);
		lbmodelo.setText("MODELO");
		getContentPane().add(lbmodelo);
		
		lbcategoria = new Label();
		lbcategoria.setBounds(new Rectangle(30, 45, 65, 16));
		lbcategoria.setFont(new Font("Verdana", 1,10));
		lbcategoria.setForeground(Color.blue);
		lbcategoria.setText("Categoria");
		getContentPane().add(lbcategoria);
		
		lbcolor = new Label();
		lbcolor.setBounds(new Rectangle(393, 45, 38, 16));
		lbcolor.setFont(new Font("Verdana", 1,10));
		lbcolor.setForeground(Color.blue);
		lbcolor.setText("Color");
		getContentPane().add(lbcolor);
		
		RBpan = new JRadioButton();
		RBpan.setSelected(false);
		RBpan.setBounds(new Rectangle(15, 180, 100, 25));
		RBpan.setText("pantalones Caballero");
		RBpan.setMnemonic('C');
		contenedor.add(RBpan);
		
		RBfal = new JRadioButton();
		RBfal.setSelected(false);
		RBfal.setBounds(new Rectangle(15, 210 , 100, 20));
		RBfal.setText("Faldas Dama");
		RBfal.setMnemonic('D');
		contenedor.add(RBfal);
		
		RBcamiseta = new JRadioButton();
		RBcamiseta.setSelected(false);
		RBcamiseta.setBounds(new Rectangle(15, 120, 100, 25));
		RBcamiseta.setText("Camisetas Caballero");
		RBcamiseta.setMnemonic('C');
		contenedor.add(RBcamiseta);
		
		RBzapatos = new JRadioButton();
		RBzapatos.setSelected(false);
		RBzapatos.setBounds(new Rectangle(15, 60, 100, 25));
		RBzapatos.setText("Zapatos Caballero");
		RBzapatos.setMnemonic('C');
		contenedor.add(RBzapatos);
		
		RBdama = new JRadioButton();
		RBdama.setSelected(false);
		RBdama.setBounds(new Rectangle(15, 90 , 100, 20));
		RBdama.setText("Zapatos Dama");
		RBdama.setMnemonic('D');
		contenedor.add(RBdama);
		
		RBblu = new JRadioButton();
		RBblu.setSelected(false);
		RBblu.setBounds(new Rectangle(15, 150 , 100, 20));
		RBblu.setText("blusas Dama");
		RBblu.setMnemonic('D');
		contenedor.add(RBblu);
		
		RBnegro = new JRadioButton();
		RBnegro.setSelected(false);
		RBnegro.setBounds(new Rectangle(375, 60, 80, 20));
		RBnegro.setText("Negro");
		RBnegro.setMnemonic('N');
		getContentPane().add(RBnegro);
		
		RBcafe = new JRadioButton();
		RBcafe.setSelected(false);
		RBcafe.setBounds(new Rectangle(375, 90, 80, 20));
		RBcafe.setText("Cafe");
		RBcafe.setMnemonic('f');
		getContentPane().add(RBcafe);
		
		RBrojo = new JRadioButton();
		RBrojo.setSelected(false);
		RBrojo.setBounds(new Rectangle(375, 120, 80, 20));
		RBrojo.setText("Rojo");
		RBrojo.setMnemonic('R');
		getContentPane().add(RBrojo);
		
		RBrosa = new JRadioButton();
		RBrosa.setSelected(false);
		RBrosa.setBounds(new Rectangle(375, 150, 80, 20));
		RBrosa.setText("Rosa");
		RBrosa.setMnemonic('o');
		getContentPane().add(RBrosa);
		
		RBblanco = new JRadioButton();
		RBblanco.setSelected(false);
		RBblanco.setBounds(new Rectangle(375, 180, 80, 20));
		RBblanco.setText("Blanco");
		RBblanco.setMnemonic('B');
		getContentPane().add(RBblanco);
		
		RBamarillo = new JRadioButton();
		RBamarillo.setSelected(false);
		RBamarillo.setBounds(new Rectangle(375, 210, 80, 20));
		RBamarillo.setText("Amarillo");
		RBamarillo.setMnemonic('A');
		getContentPane().add(RBamarillo);
		
		CBtalla = new JComboBox();
		CBtalla.setBounds(new Rectangle(173, 285, 137, 25));
		CBtalla.addItem("Talla");
		CBtalla.addItem("Chica");
		CBtalla.addItem("Mediana");
		CBtalla.addItem("Grande");
		CBtalla.addItem("Extra grande");
		getContentPane().add(CBtalla); 

		CBnumero = new JComboBox();
		CBnumero.setBounds(new Rectangle(173, 255, 137, 25));
		CBnumero.addItem("Nùmero");
		CBnumero.addItem("21");
		CBnumero.addItem("22");
		CBnumero.addItem("23");
		CBnumero.addItem("24");
		CBnumero.addItem("25");
		CBnumero.addItem("26");
		CBnumero.addItem("27");
		getContentPane().add(CBnumero); 
		
		bimprime = new JButton();
		bimprime.setBounds(new Rectangle(173, 400, 135, 27));
		bimprime.setForeground(Color.blue);
		bimprime.setText("IMPRIMIR");
		getContentPane().add(bimprime);
		
		bmostrar = new JButton();
		bmostrar.setBounds(new Rectangle(128, 46, 224, 194));
		getContentPane().add(bmostrar);
		
		    ButtonGroup gruposex = new ButtonGroup();
		    gruposex.add(RBdama);
		    gruposex.add(RBblu);
		    gruposex.add(RBpan);
		    gruposex.add(RBfal);
		    gruposex.add(RBzapatos);
		    gruposex.add(RBcamiseta);
		    
		    ButtonGroup grupocolor = new ButtonGroup();
		    grupocolor.add(RBnegro);
		    grupocolor.add(RBcafe);
		    grupocolor.add(RBrojo);
		    grupocolor.add(RBblanco);
		    grupocolor.add(RBrosa);
		    grupocolor.add(RBamarillo);
		    
		   /* RBdama.addActionListener(new ActionListener(){
		    public void actionPerformed(ActionEvent evt){
		    dama(evt); } } );*/
		    
		    bmostrar.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent evt){
		    		metodo(evt); }} );
		    
		    bimprime.addActionListener(new ActionListener(){
		    	public void actionPerformed(ActionEvent evt){
		    		imprimir(evt); }} ); 
	    	
	    	 
		   
		 
		  
		
   }
 
 
// class RadioListener implements ActionListener  {
	    public void metodo(ActionEvent e) {
	    	
	    	if (RBdama.isSelected()&&RBnegro.isSelected())
	    		{
	    		bmostrar.setIcon(new ImageIcon("6.jpg"));
	    			 
	    	    }
	    	if(RBdama.isSelected()&&RBcafe.isSelected())
	    	   {
	    		bmostrar.setIcon(new ImageIcon("7.jpg"));	
	    	   }
	    	
	    	if (RBdama.isSelected()&&RBrojo.isSelected())
    		   {
    		   bmostrar.setIcon(new ImageIcon("8.jpg")); 
    	       }
	    	
    	    if(RBdama.isSelected()&&RBrosa.isSelected())
    	      {
    		  bmostrar.setIcon(new ImageIcon("9.jpg"));	
    	      }
    	    if (RBdama.isSelected()&&RBblanco.isSelected())
    		{
    		bmostrar.setIcon(new ImageIcon("10.png"));
    			 
    	    }
    	if(RBdama.isSelected()&&RBamarillo.isSelected())
    	   {
    		bmostrar.setIcon(new ImageIcon("11.png"));	
    	   }
    	
    	
    	if (RBfal.isSelected()&&RBnegro.isSelected())
		{
		bmostrar.setIcon(new ImageIcon("f6.jpg"));
			 
	    }
	if(RBfal.isSelected()&&RBcafe.isSelected())
	   {
		bmostrar.setIcon(new ImageIcon("f2.jpg"));	
	   }
	
	if (RBfal.isSelected()&&RBrojo.isSelected())
	   {
	   bmostrar.setIcon(new ImageIcon("f3.jpg")); 
       }
	
    if(RBfal.isSelected()&&RBrosa.isSelected())
      {
	  bmostrar.setIcon(new ImageIcon("f4.jpg"));	
      }
    if (RBfal.isSelected()&&RBblanco.isSelected())
	{
	bmostrar.setIcon(new ImageIcon("f1.jpg"));
		 
    }
if(RBfal.isSelected()&&RBamarillo.isSelected())
   {
	bmostrar.setIcon(new ImageIcon("f5.jpg"));	
   }
	    
    	    if (RBblu.isSelected()&&RBnegro.isSelected())
    		{
    		bmostrar.setIcon(new ImageIcon("b5.jpg"));
    			 
    	    }
    	if(RBblu.isSelected()&&RBcafe.isSelected())
    	   {
    		bmostrar.setIcon(new ImageIcon("b6.jpg"));	
    	   }
    	
    	if (RBblu.isSelected()&&RBrojo.isSelected())
		   {
		   bmostrar.setIcon(new ImageIcon("b1.jpg")); 
	       }
    	
	    if(RBblu.isSelected()&&RBrosa.isSelected())
	      {
		  bmostrar.setIcon(new ImageIcon("b2.jpg"));	
	      }
	 	if (RBblu.isSelected()&&RBamarillo.isSelected())
		   {
		   bmostrar.setIcon(new ImageIcon("b3.jpg")); 
	       }
 	
	    if(RBblu.isSelected()&&RBblanco.isSelected())
	      {
		  bmostrar.setIcon(new ImageIcon("b4.jpg"));	
	      }
	    
	        if (RBzapatos.isSelected()&&RBnegro.isSelected())
    		{
    		bmostrar.setIcon(new ImageIcon("0.jpg"));
    			 
    	    }
    	if(RBzapatos.isSelected()&&RBcafe.isSelected())
    	   {
    		bmostrar.setIcon(new ImageIcon("1.jpg"));	
    	   }
    	
    	if (RBzapatos.isSelected()&&RBrojo.isSelected())
		   {
		   bmostrar.setIcon(new ImageIcon("2.jpg")); 
	       }
    	
	    if(RBzapatos.isSelected()&&RBrosa.isSelected())
	      {
		  bmostrar.setIcon(new ImageIcon("3.jpg"));	
	      }
	   
	      if (RBzapatos.isSelected()&&RBblanco.isSelected())
	      {
	      bmostrar.setIcon(new ImageIcon("4.jpg"));
          }
	      
        if(RBzapatos.isSelected()&&RBamarillo.isSelected())
          {
	      bmostrar.setIcon(new ImageIcon("5.jpg"));	
          }
        if (RBcamiseta.isSelected()&&RBnegro.isSelected())
		{
		bmostrar.setIcon(new ImageIcon("c5.jpg"));
			 
	    }
	if(RBcamiseta.isSelected()&&RBcafe.isSelected())
	   {
		bmostrar.setIcon(new ImageIcon("c2.jpg"));	
	   }
	
	if (RBcamiseta.isSelected()&&RBrojo.isSelected())
	   {
	   bmostrar.setIcon(new ImageIcon("c4.jpg")); 
       }
	
    if(RBcamiseta.isSelected()&&RBrosa.isSelected())
      {
	  bmostrar.setIcon(new ImageIcon("c3.jpg"));	
      }
   
      if (RBcamiseta.isSelected()&&RBblanco.isSelected())
      {
      bmostrar.setIcon(new ImageIcon("c1.jpg"));
      }
      
    if(RBcamiseta.isSelected()&&RBamarillo.isSelected())
      {
      bmostrar.setIcon(new ImageIcon("c6.jpg"));	
      }
    
    if (RBpan.isSelected()&&RBnegro.isSelected())
	{
	bmostrar.setIcon(new ImageIcon("pa2.jpg"));
		 
    }
if(RBpan.isSelected()&&RBcafe.isSelected())
   {
	bmostrar.setIcon(new ImageIcon("pa6.jpg"));	
   }

if (RBpan.isSelected()&&RBrojo.isSelected())
   {
   bmostrar.setIcon(new ImageIcon("pa3.jpg")); 
   }

if(RBpan.isSelected()&&RBrosa.isSelected())
  {
  bmostrar.setIcon(new ImageIcon("pa4.jpg"));	
  }

  if (RBpan.isSelected()&&RBblanco.isSelected())
  {
  bmostrar.setIcon(new ImageIcon("pa1.jpg"));
  }
  
if(RBpan.isSelected()&&RBamarillo.isSelected())
  {
  bmostrar.setIcon(new ImageIcon("pa5.jpg"));	
  }

	                                    }
	    
	    public int print(Graphics graphics, PageFormat pageFormat, int pageIndex) throws PrinterException {

	        if (pageIndex > 0)
	          return NO_SUCH_PAGE;

	        Graphics2D g2d = (Graphics2D)graphics;
	        g2d.translate(pageFormat.getImageableX(), pageFormat.getImageableY());
	        //-------------------------ESCALAR LA IMPRESION-------------------------------//
	         
	        //----------------------------------------------------------------------------//
	        bmostrar.printAll(graphics);

	        return PAGE_EXISTS;
	    }

	    
	    

	public void imprimir(ActionEvent e)
	{
		PrinterJob job = PrinterJob.getPrinterJob();
		job.setPrintable(this);
		boolean ok = job.printDialog();
		
		if (RBdama.isSelected()&&RBnegro.isSelected())
		{
		 
			 
	    }
		if (ok) {
		try {
		job.print();
		} catch (PrinterException ex) {
		ex.printStackTrace();
		}
		}
	}     
	       
	       
	public static void main(String args[]){
		 
		   
		 try
		 {
			 UIManager.setLookAndFeel(
			 UIManager.getSystemLookAndFeelClassName());}
			 catch(Exception e){
			 System.out.print("NO SE PUEDE CONTINUAR"+e);
			 }
			 
		 Zapatos  obj=new Zapatos();
		 
		 
		 obj.setVisible(true);
		 obj.setResizable(false);//no permite el redimencionamiento de la frame
		 obj.setSize(500,490);//tamaño de la ventana
		 
		 frame.getContentPane().add(new Zapatos(),BorderLayout.CENTER);
		 
		 
		
		 
	     }
	 
	}





