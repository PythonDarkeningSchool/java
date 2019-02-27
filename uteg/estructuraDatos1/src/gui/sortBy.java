package gui;

import java.util.Comparator;

public class sortBy implements Comparator<students> {
    // used for sorting in ascending order by code
    public int compare(students a, students b){
        return a.getCode() - b.getCode();
    }
}
