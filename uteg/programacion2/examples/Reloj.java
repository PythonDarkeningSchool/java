import java.awt.*;
import java.awt.event.*;
public class Reloj {

	private Frame fr;
	private Label lbdato1,lbdato2;
	private TextField tfdato1,tfdato2;
	private Button btconv,btcon;
	private float a,b,res;
	
	
	public Reloj(){
		fr=new Frame ("RELOJ");
		lbdato1=new Label("24hrs.");
		lbdato2=new Label("am/pm");
		
		
        tfdato1=new TextField (4);
		tfdato2=new TextField (4);
		
		
		btconv=new Button("<<24 hrs>>");
		fr.setLayout (new FlowLayout());
		btcon=new Button("<<am/fm>>");
		fr.setLayout (new FlowLayout());
		
		
		fr.add(lbdato1);
		fr.add(tfdato1);
		fr.add(lbdato2);
		fr.add(tfdato2);
		
		
		fr.add(btconv);
	    fr.add(btcon);
		
		
		fr.setSize(150,200);
		fr.setResizable(false);
		
	}
	public void extraer(){
		try{
			a=Float.parseFloat(tfdato1.getText());
		}catch (NumberFormatException e){
			a=0.00f;
			tfdato1.setText("0:0");
		}
		try{
			b=Float.parseFloat(tfdato2.getText());
		}catch (NumberFormatException e){
			b=0.00f;
			tfdato2.setText("0:0");
		}
		
	}
		public void mostrar(){
			fr.setVisible(true);
			fr.addWindowListener(new WindowAdapter (){
				public void windowClosing(WindowEvent e){
					System.exit(0);
					
				}
			});


			
			btconv.addMouseListener(new MouseAdapter(){
				public void mouseReleased(MouseEvent e){
					extraer();
					if(a<12)
						res=a+12;
					
				}
				
				});
			btcon.addMouseListener(new MouseAdapter(){
				public void mouseReleased(MouseEvent e){
					extraer();
					if(b>12)
						res=b-12;
				}
			});
		}

	public static void main(String[] args) {
		Reloj mat=new Reloj();
		mat.mostrar();
		
		
   
}

}
