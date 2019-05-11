/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.Serializable;
import javax.persistence.*;
/**
 *
 * @author hp
 */

@Entity
public class Student implements Serializable {
   @Id
   @GeneratedValue
   private long s_id;
   
   @Column(unique=true,nullable=false)
   private String username;
   
   private String password;
      
   private String name;
  
   private String Acctype;

    
    public String getAcctype() {
        return Acctype;
    }

    public void setAcctype(String Acctype) {
        this.Acctype = Acctype;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
  
    public Student() {
    }

    public long getS_id() {
        return s_id;
    }

    public void setS_id(long s_id) {
        this.s_id = s_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public Student(String name,String username, String password,String Acctype) {
        this.name = name;
        this.username = username;
        this.Acctype = Acctype;
        this.password = password;
    }
    
    @Override
    public boolean equals(Object o) {
        Student u = (Student) o;
        return this.username.equals(u.username) && this.password.equals(u.password) && this.Acctype.equals(u.Acctype);
    }

   
}
