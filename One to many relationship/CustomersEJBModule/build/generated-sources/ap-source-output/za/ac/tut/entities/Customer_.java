package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Contact;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-04-03T09:55:34")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, String> surname;
    public static volatile SingularAttribute<Customer, String> name;
    public static volatile SingularAttribute<Customer, Long> id;
    public static volatile SingularAttribute<Customer, Date> creationDate;
    public static volatile ListAttribute<Customer, Contact> contacts;

}