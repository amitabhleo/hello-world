@isTest
private class HelloWorldTestClass {
static testMethod void validateHelloWorld() {
Account a = new Account(Name='T1 Account');
// Insert account
insert a;
// Retrieve account
a = [SELECT hello__c FROM account WHERE Id = :a.id];
//a=[select Hello__c from Account where Id = :a.Id];
// Test that HelloWorld program correctly added the value
// "World" to the Hello field
System.assertEquals('World!',a.hello__c);
}
}