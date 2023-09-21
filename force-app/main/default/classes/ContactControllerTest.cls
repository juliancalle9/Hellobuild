@isTest
public class ContactControllerTest {
	@TestSetup
    static void makeData(){
        List<Contact> contactos = new List<Contact>(); 
        for(Integer i = 0; i < 10; i++){
            Contact contacto = new Contact(firstName = 'Juan ' + i, LastName = 'Gonzoles' + i, Email = 'juang'+i+'@gmail.com', Phone = '111' + i);
            contactos.add(contacto);
        }
        insert contactos; 
            
    }
    
    @isTest
    public static void obtenerContacts(){
        List<Contact> contactos = ContactController.contactList(); 
        Assert.areEqual(10, contactos.size()); 
    }
    
    
}