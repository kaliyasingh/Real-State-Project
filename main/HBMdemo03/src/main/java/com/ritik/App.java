package com.ritik;


import java.util.List;
import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.entity.Product;


public class App {

	public static void main(String[] args) {
   
		
		System.out.println("application started");
	    Scanner sc = new Scanner(System.in);
  
	    int n=1;	
		Configuration cfg= new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		
		while(n==1) {
		System.out.println("What Do U Want : ");
		System.out.println("Add Employee : 1");
		System.out.println("Update Employee : 2");
		System.out.println("Delete Employee : 3");
		System.out.println("Search Employee : 4");
		System.out.println("List Of All Employee : 5");
		System.out.println("Enter your choice : ");
		int choice = sc.nextInt();
		    
        Product p = new Product();
		Session session = null;
		Transaction tx= null;

	  switch (choice) {
	  case 1:
		  System.out.print("Enter product name :");
		  p.setPname(sc.next());
		  System.out.print("Enter product price :");
		  p.setPrice(sc.nextDouble());
		  
		  session = sf.openSession();
		  tx = session.beginTransaction();		  
		  session.save(p);
		  tx.commit();
		  
		  session.close();
	    	  System.out.println("product added scussefully");
	    	  break;
	    	  
		  case 2:
			     System.out.print("Enter Product id :");
			      p.setPid(n);
			      System.out.print("Enter product name :");
			      p.setPname(sc.next());
				  System.out.print("Enter product price :");
				  p.setPrice(sc.nextDouble());
				  
				  session = sf.openSession();
				  tx = session.beginTransaction();		  
				  session.update(p);
				  tx.commit();
				  
				  session.close();
			    	  System.out.println("product updated scussefully");
			    	  break;
			    			
		  case 3:
			    System.out.print("Enter Product id :");
		        p.setPid(n);
		      
			    session= sf.openSession();
				tx=session.beginTransaction();
				session.delete(p);;
				tx.commit();
				System.out.println("product deleted scussefully");
				break;
			
		  case 4:
     			System.out.println("*****To Product Employee****");
     			System.out.print("Enter Product id :");
 		        p.setPid(sc.nextInt());
 		      			    
			    session= sf.openSession();
				tx=session.beginTransaction();
				try
				{
					p = session.load(Product.class,p.getPid());
					if(p!=null)
					System.out.println(p);
					else
					System.out.println("product is not found");
				}
				catch (Exception e2) {
				}
				tx.commit();
				break;
				
		  case 5:
			 
			break;
		default:
			throw new IllegalArgumentException("Unexpected value: " + n);
			
		}
	    System.out.println("Do you want to continue press Y=1/n=0");
		n= sc.nextInt();
		}
	}
}
