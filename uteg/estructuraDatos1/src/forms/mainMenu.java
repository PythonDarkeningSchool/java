package forms;
// GUI imports

import javax.swing.*;
import java.awt.event.*;
import java.awt.Dimension;

// Local imports
import gui.common;


public class mainMenu {
    private JButton continueButton;
    private JPanel panel1;
    private JTextField inputStudents;
    private JButton cancelButton;

    public mainMenu() throws NumberFormatException {
        // CLASS CONSTRUCTOR

        // Set buttons size
        continueButton.setPreferredSize(new Dimension(25, 60));
        cancelButton.setPreferredSize(new Dimension(25, 60));

        inputStudents.addFocusListener(new FocusAdapter() {
            @Override
            public void focusGained(FocusEvent e) {
                super.focusGained(e);
                inputStudents.setText("Type the total of students to insert");
            }
        });
        inputStudents.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                // Clear input box
                inputStudents.setText(null);
            }
        });
        continueButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String studentsString = inputStudents.getText();

                try{
                    int studentsInt = Integer.parseInt(studentsString);
                }
                catch (NumberFormatException error){
                    JOptionPane.showMessageDialog(panel1, "invalid input");
                }
            }
        });
        cancelButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(0);
            }
        });
    }

    public static void main(String[] args) {
        // Define the GUI frame
        JFrame frame = new JFrame("mainMenu");
        frame.setContentPane(new mainMenu().panel1);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setPreferredSize(new Dimension(300, 200));
        frame.pack();
        frame.setLocationRelativeTo(null); // centered window
        frame.setVisible(true);
    }
}
