package gui;

public class students {

    // Define the variables
    private int code;
    private String name;
    private String lastName;
    private float qualification;

    // Define the constructor
    public students(int code, String name, String lastName, float qualification){
        this.code = code;
        this.name = name;
        this.lastName = lastName;
        this.qualification = qualification;
    }

    // Used to print students details in the main()
    public String toString(){
        return String.format(
                "code(%d) | name(%s) | lastName(%s) | qualification(%f)", code, name, lastName, qualification);
    }

    // Getters and Setters
    public int getCode() { return code; }

    public void setCode(int code) { this.code = code; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getLastName() { return lastName; }

    public void setLastName(String lastName) { this.lastName = lastName; }

    public float getQualification() { return qualification; }

    public void setQualification(float qualification) { this.qualification = qualification; }
}
