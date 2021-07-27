Contact[] theseContacts = [SELECT Name, Phone, Email, Description FROM Contact
 WHERE (Department!='Specialty Crisis Management 3')
 ORDER BY Name limit 10];
System.debug( theseContacts.size() + ' contact(s) returned.');
System.debug( theseContacts );
if( theseContacts.size() != 0 ) {
    theseContacts[0].Department = 'Specialty Crisis Management 3';
    update theseContacts[0];
}