@isTest

public class TestreadyForPayment {
    public static void AssetForTesting(){
    }
        @isTest static void assetDiffAcctId(){
            Account acct = new Account(); 
            acct.Name = 'test1'; 
            Insert acct; 
            
            Account acctInv = new Account(); 
            acctInv.Name = 'Inventory'; 
            Insert acctInv; 

           
            Contact cont = new Contact(); 
            cont.FirstName = 'bob';
            cont.LastName = 'dog'; 
            cont.AccountId = acct.Id;
            cont.Email = 'bob@dog.com'; 
            Insert cont; 
            
            
            Opportunity oppt = new Opportunity(); 
            oppt.name = 'test1'; 
            oppt.AccountId = acct.Id; 
            oppt.Primary_Contact__c = cont.Id; 
            oppt.StageName = 'Proposal Signed';
            oppt.CloseDate = Date.today(); 
            oppt.AccountId = acct.Id; 
            Insert oppt; 
            
            
            dsfs__DocuSign_Status__c docu = new dsfs__DocuSign_Status__c(); 
            docu.dsfs__DocuSign_Envelope_ID__c = '821442F1-09E1-48C1-B6B4-9AEE92E2D4321';
            docu.dsfs__Completed_Date_Time__c = DateTime.now();
            docu.dsfs__Sent_Date_Time__c = DateTime.now(); 
            docu.dsfs__Viewed_Date_Time__c = DateTime.now(); 
            docu.dsfs__Opportunity__c = oppt.Id; 
            Insert docu; 
            
            Asset ass = new Asset(); 
            ass.Name = '123456677890'; 
            ass.AccountId = acctInv.Id;  
            Insert ass; 
            
            ass.AccountId = acct.Id; 
            Update ass; 
            
            
           
            
            Test.startTest();
            
            Test.stopTest();
             
        }
    
    
    
        @isTest static void AssetWithSame(){
            Account acct = new Account(); 
            acct.Name = 'test1'; 
            Insert acct; 
            
            Account acctInv = new Account(); 
            acctInv.Name = 'Inventory'; 
            Insert acctInv; 

           
            Contact cont = new Contact(); 
            cont.FirstName = 'bob';
            cont.LastName = 'dog'; 
            cont.AccountId = acct.Id;
            cont.Email = 'bob@dog.com'; 
            Insert cont; 
            
            
            Opportunity oppt = new Opportunity(); 
            oppt.name = 'test1'; 
            oppt.AccountId = acct.Id; 
            oppt.Primary_Contact__c = cont.Id; 
            oppt.StageName = 'Proposal Signed';
            oppt.CloseDate = Date.today(); 
            oppt.AccountId = acct.Id; 
            Insert oppt; 
            
            
            dsfs__DocuSign_Status__c docu = new dsfs__DocuSign_Status__c(); 
            docu.dsfs__DocuSign_Envelope_ID__c = '821442F1-09E1-48C1-B6B4-9AEE92E2D4321';
            docu.dsfs__Completed_Date_Time__c = DateTime.now();
            docu.dsfs__Sent_Date_Time__c = DateTime.now(); 
            docu.dsfs__Viewed_Date_Time__c = DateTime.now(); 
            docu.dsfs__Opportunity__c = oppt.Id; 
            Insert docu; 
            
            Asset ass = new Asset(); 
            ass.Name = '123456677890'; 
            ass.AccountId = acctInv.Id;  
            Insert ass; 
            
            ass.AccountId = acctInv.Id; 
            Update ass; 
            
            
           
            
            Test.startTest();
            
            Test.stopTest();
             
        }
    
       
}