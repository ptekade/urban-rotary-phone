Contact[] theseContacts = [SELECT Name, Phone, Email, Description FROM Contact
 WHERE (Department='#{{DEPARTEMENT_NAME_FROM_ENV_VARIABLES}}')
 ORDER BY Name limit 20];
System.debug( theseContacts.size() + ' contact(s) returned.');
System.debug( theseContacts );
if( theseContacts.size() != 0 ) {
    theseContacts[0].Department = 'Specialty Crisis Management';
    update theseContacts[0];
}