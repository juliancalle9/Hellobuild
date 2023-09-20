import { LightningElement, wire } from 'lwc';
import getContactList from '@salesforce/apex/ContactController.contactList'; 

const columns = [
    { label: 'Name', fieldName: 'Name', type: 'text' },
    { label: 'Email', fieldName: 'Email', type: 'email' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' },
];

export default class ListContacts extends LightningElement {
    columns = columns;
    @wire(getContactList)
    contacts; 
}