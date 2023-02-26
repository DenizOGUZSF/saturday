System.debug(DummyDataCreation.method1(4));

List<Contact> contactList = DummyDataCreation.method2(1, [Select id, name from account order by createdDate limit 1]);
DummyDataCreation.method3(contactList);

//system.debug(DummyDataCreation.method2(1, [Select id, name from account order by createdDate limit 1]));
//
//system.debug(DummyDataCreation.method3(DummyDataCreation.method2(2, [Select id, name from account order by createdDate limit 3])));

 List<Contact> con = [Select id ,accountid from contact where email='lboyle@uog.com'  limit 1];
system.debug(DummyDataCreation.method3(con)); 
system.debug('lalal');





list<contact> listcontact = new list<contact>();
    contact con1 = new contact();
    con1.firstname = 'Charlotte1 ';
    con1.lastname = 'Perez1';
    listcontact.add(con1);


// contact con2 = new contact();
// con2.firstname = 'Helen';
// con2.lastname = 'White';
// listcontact.add(con2);

insert listcontact;

DummyDataCreation.DummyDataCreation3(listcontact);