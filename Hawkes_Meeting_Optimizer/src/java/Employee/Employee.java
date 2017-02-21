/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Employee;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;

/**
 *
 * @author brettperrine
 */

public class Employee implements Serializable {
   private String firstName;
    private String lastName;
    private String email;
    private String position;

    public Employee() {
        firstName = "";
        lastName = "";
        email = "";
        position = "";
    }

    public Employee(String firstName, String lastName, String email, String Position) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.position = position;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

   /**
    * @return the position
    */
   public String getPosition() {
      return position;
   }

   /**
    * @param position the position to set
    */
   public void setPosition(String position) {
      this.position = position;
   }
}

