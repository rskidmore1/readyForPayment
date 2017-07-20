readyForPayment.tgr marks which opportunity will be "Closed Won" once a new client makes a new payment. Script is part a larger system that Automatically marks new clients "Closed Won" or paid in Salesforce once they make a payment. Middleware running outside of Salesforce will actually change the Opportunity to "Closed Won."


HOW IT WORKS:
1. Customer Service adds Assets that will be shipped to client as part of my company's service and triggers the script. 
2. Script searches client's Opportunities for the last DocuSign contract that the client signed. 
3. Script marks the "Ready for Payment" field True in the proper Opportunity. 



DOES IT WORK:
Yes. It has been running for several months in our production Salesforce Instance. It has reduce the need for Customer Service to constantly watch for new customer payments.  


DISCLAIMER:
SCRIPTS ARE INTENDED TO DEMONSTRATE MY CODING SKILLS IN SALESFORCE AND APEX. 


LICENSE: 
NO EXPLICIT OR IMPLICIT PERMISSION IS GIVEN ANY PERSON, GROUP, OR ORGANIZATION TO USE ANY OF THIS MATERIAL FOR ANY BUSINESS OR PERSONAL REASON UNRELATED TO MYSELF WITHOUT WRITTEN PERMISSION. 
