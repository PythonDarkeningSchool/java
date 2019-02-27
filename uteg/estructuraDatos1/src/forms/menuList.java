package forms;

import javax.swing.*;
import java.awt.event.*;

public class menuList {
    private JButton button1;
    private JPanel panel1;
    private JButton setInvisibleButton;

    public menuList() {
        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                //JOptionPane.showMessageDialog(null, "Hello World");
                //String option = JOptionPane.showInputDialog(null, "hola bebe");
                // int option = JOptionPane.showConfirmDialog(null, "ss");
                //JOptionPane.showInternalConfirmDialog(panel1, "nene");
                //System.out.print(option);
                setInvisibleButton.setVisible(false);
            }
        });
        setInvisibleButton.addFocusListener(new FocusAdapter() {
            @Override
            public void focusGained(FocusEvent e) {
                super.focusGained(e);
                setInvisibleButton.setVisible(false);
            }
        });

    }

    public static void main(String[] args) {
        // Define the frame for the GUI
        JFrame frame = new JFrame("menuList");
        frame.setContentPane(new menuList().panel1);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

    }

}
