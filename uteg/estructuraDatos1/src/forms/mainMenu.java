package forms;
// GUI imports
import javax.swing.*;
import java.awt.event.*;
import java.awt.Dimension;

// Common imports
import java.util.ArrayList;
import java.util.List;

// Local imports
import gui.students;


public class mainMenu {
    private JButton continueButton;
    private JPanel panel1;
    private JTextField inputStudents;
    private JButton exitlButton;
    private static JFrame frame = new JFrame("mainMenu");

    public mainMenu() throws NumberFormatException {
        // CLASS CONSTRUCTOR

        // Set buttons size
        continueButton.setPreferredSize(new Dimension(25, 60));
        exitlButton.setPreferredSize(new Dimension(25, 60));

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
        // Button click
        continueButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String sStudents = inputStudents.getText();
                // Create the object
                List<students> studentsList = new ArrayList<>();

                try{
                    // Declare variables
                    int iStudents = Integer.parseInt(sStudents);
                    String code, name, lastName, qualification;
                    boolean showNextForm = false;

                    label:
                    for(int i = 0; i < iStudents; i++){

                        while(true){
                            try{
                                code = JOptionPane.showInputDialog(null, String.format("(student #%d) Type the student code", i +1));
                                if(code == null){ break label; }
                                else if (!code.isEmpty()){ break; }
                            }
                            catch(NullPointerException error){
                                JOptionPane.showMessageDialog(panel1, "invalid input for code, must be a number");
                            }
                        }

                        while(true){
                            try{
                                name = JOptionPane.showInputDialog(null, String.format("(student #%d) Type the student name", i +1) );
                                if(name == null){ break label; }
                                else if (!name.isEmpty()){ break; }
                            }
                            catch(NullPointerException error){
                                JOptionPane.showMessageDialog(panel1, "invalid input for name, must be a string");
                            }
                        }

                        while(true){
                            try{
                                lastName = JOptionPane.showInputDialog(null, String.format("(student #%d) Type the student last name", i +1) );
                                if(lastName == null){ break label; }
                                else if (!lastName.isEmpty()){ break; }
                            }
                            catch(NullPointerException error){
                                JOptionPane.showMessageDialog(panel1, "invalid input for lastName, must be a string");
                            }
                        }

                        while(true){
                            try{
                                qualification = JOptionPane.showInputDialog(null, String.format("(student #%d) Type the student qualification", i +1) );
                                if(qualification == null){ break label; }
                                else if (!qualification.isEmpty()){ showNextForm = true; break; }
                            }
                            catch(NullPointerException | NumberFormatException error){
                                JOptionPane.showMessageDialog(panel1, "invalid input for qualification, must be a number");
                            }
                        }

                        // Added to the list a new object of type students
                        studentsList.add(new students(Integer.parseInt(code), name, lastName, Float.parseFloat(qualification)));
                    }

                    // Validating if the user fill all the text fields
                    if(showNextForm){
                        JOptionPane.showMessageDialog(null, "The students were added successfully");

                        // Call to optionMenu form
                        hideForm();

                        JFrame frame = new JFrame("optionMenu");
                        frame.setContentPane(new optionMenu(studentsList).panel2);
                        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                        frame.setPreferredSize(new Dimension(170, 165));
                        frame.pack();
                        frame.setLocationRelativeTo(null); // centered window
                        frame.setVisible(true);
                    }

                }
                catch (NumberFormatException error){
                    JOptionPane.showMessageDialog(panel1, "invalid input for the list of students");
                }
            }
        });
        // Button click
        exitlButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int userChoice = JOptionPane.showConfirmDialog(
                        null, "Are you sure?");
                if(userChoice == 0){
                    System.exit(0);
                }
            }
        });
    }

    private static void hideForm(){
        frame.setVisible(false);
    }

    private static void showForm(){
        frame.setVisible(true);
    }

    public static void main(String[] args) {
        // Define the GUI frame
//        JFrame frame = new JFrame("mainMenu");
        frame.setContentPane(new mainMenu().panel1);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setPreferredSize(new Dimension(300, 200));
        frame.pack();
        frame.setLocationRelativeTo(null); // centered window
        showForm();
        //frame.setVisible(true);
    }
}
