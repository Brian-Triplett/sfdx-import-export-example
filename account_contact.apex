Account vandelay = new Account(Name='Vandelay Industries');
insert vandelay;

Contact george = new Contact(
    AccountId=vandelay.Id, 
    FirstName='George',
    LastName='Costanza',
    Title='Director of Importing');
insert george;

Account stark = new Account(Name='Stark Enterprises');
insert stark;

Contact tony = new Contact(
    AccountId=stark.Id, 
    FirstName='Tony',
    LastName='Stark',
    Title='CEO');
insert tony;