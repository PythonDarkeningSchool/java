package forms;

// GUI imports
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Local imports
import gui.sortBy;
import gui.students;

public class optionMenu {
    // GUI attributes
    private JButton showOriginalListButton;
    private JButton showOrderedListButton;
    private JButton deleteAStudentButton;
    public JPanel panel2;
    private JButton exitButton;

    // local attributes
    //private List<Students> students;
    private List<students> students;

    private void showListContent(List<students> students){

        StringBuilder listContent = new StringBuilder("List Content\n\n");

        for(int i=0; i<  students.size(); i++){

            int code = students.get(i).getCode();
            String name = students.get(i).getName();
            String lastName = students.get(i).getLastName();
            float qualification = students.get(i).getQualification();

            String tmp = String.format(
                    "index(%d) | code(%d) | name(%s) | lastName(%s) | qualification(%f)\n",
                    i,  code, name, lastName, qualification);
            listContent.append(tmp);
        }

        JOptionPane.showMessageDialog(null, listContent);
    }

    public optionMenu(List<students> students) {

        // Define variables
        //Collections.copy(this.students, students); // Add all elements to the list

        // Show the original list
        showOriginalListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int listLength = students.size();

                if(listLength > 0){
                    showListContent(students);
                }
                 else {
                    JOptionPane.showMessageDialog(null,"The list is empty");
                }
            }
        });

        // Show ordered list
        showOrderedListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                int listLength = students.size();

                if(listLength > 0){
                    // Create an empty list using the constructor that takes the collection as its argument
                    List<students> studentsOrderedList = new ArrayList<>(students);
                    // Sort the created list
                    Collections.sort(studentsOrderedList, new sortBy());
                    // Show list content
                    showListContent(studentsOrderedList);
                }
                else{
                    JOptionPane.showMessageDialog(null,"The list is empty");
                }


            }
        });
        // Delete a user
        deleteAStudentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                int listLength = students.size();

                if(listLength > 0){
                    String indexToDelete = JOptionPane.showInputDialog(null, "Type the index to delete");

                    //System.out.println(listLength);
                    //System.out.println(indexToDelete);

                    if(indexToDelete != null){
                        // the user does not push cancel button
                        try{
                            // Get the value of the student to be deleted
                            students studentDeleted = students.get(Integer.parseInt(indexToDelete));
                            students.remove(Integer.parseInt(indexToDelete));
                            JOptionPane.showMessageDialog(
                                    null,String.format("The following user was deleted successfully\n\n=> %s", studentDeleted));
                        }
                        catch (IndexOutOfBoundsException | NumberFormatException error){
                            JOptionPane.showMessageDialog(null,"The index does not exists");
                        }
                    }
                }
                else{
                    JOptionPane.showMessageDialog(null,"The list is empty");
                }

            }
        });
        // Exit
        exitButton.addActionListener(new ActionListener() {
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


//    public static void main(String[] args) {
//        // Define the GUI frame
//        JFrame frame = new JFrame("optionMenu");
//        frame.setContentPane(new optionMenu().panel2);
//        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//        frame.setPreferredSize(new Dimension(170, 120));
//        frame.pack();
//        frame.setLocationRelativeTo(null); // centered window
//        frame.setVisible(true);
//    }
}

