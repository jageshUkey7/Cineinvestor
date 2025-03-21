package com.abcm.ablepay.pg.security;



import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ref_id")
    private int refId;

    @Column(nullable = false,unique = true)
    private String username;
    
    @Column(columnDefinition = "varchar(100) default null")
    private String password; 
    @Column(columnDefinition = "varchar(1000) default null")
    private String Phone;
    @Column(columnDefinition = "varchar(50) default null" , name="merchant_name")
    private String customerName;
    @Column(columnDefinition = "varchar(50) default null",name="merchant_email")
    private String email;
    @Column(columnDefinition = "varchar(50) default null")
    private String createdOn;
    @Column(columnDefinition = "varchar(50) default null")
    private String createdBy;
    @Column(columnDefinition = "int default 0")
    private int progressId;
  
   

	public User orElseThrow(Object object) {
		// TODO Auto-generated method stub
		return null;
	}

   
}