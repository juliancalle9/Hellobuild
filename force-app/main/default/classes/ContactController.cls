public with sharing class ContactController {

    public class ContactException extends Exception {}

    @AuraEnabled(cacheable=true)
    public static List<Contact> contactList(){
        try {
            return [SELECT id, Name, email, Phone FROM Contact ORDER BY Name ASC LIMIT 10 ];
        } catch (ContactException e) {
            throw new ContactException('Hay un error con la información de los contactos');
        }
       

    }
}