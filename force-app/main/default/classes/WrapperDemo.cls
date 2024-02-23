public with sharing class WrapperDemo {

    @AuraEnabled(cacheable=true)
    public static List<WrapperClass> fetchAccountDetails(){

        List<WrapperClass> listWrapperClass = new List<WrapperClass>();
        for(Account acc : [SELECT id ,name,type,billingStreet,billingCity,billingcountry,
                            (SELECT id FROM contacts),(SELECT id FROM Opportunities)
                            FROM Account WHERE name != null LIMIT 10]){
             listWrapperClass.add(new WrapperClass(acc,acc.contacts.size(),acc.opportunities.size()));
         }
        return listWrapperClass;
    }

    

    public class WrapperClass{
        @AuraEnabled
        public Account acc;
        @AuraEnabled
        public Integer totalContacts;
        @AuraEnabled
        public Integer totalOpportunities;
        @AuraEnabled
        public String billingAdress;
        @AuraEnabled
        public String type;
        @AuraEnabled
        public String AccountName;
        @AuraEnabled
        public String AccountLink;

        //create constructor
        public WrapperClass(Account acc,Integer totalContacts,Integer totalOpportunities){
            this.acc = acc;
            this.totalContacts = totalContacts;
            this.totalOpportunities = totalOpportunities;
            this.AccountLink = '/'+acc.Id; 
            this.type = acc.Type;
            this.AccountName = acc.Name;
            this.billingAdress = acc.BillingStreet+', '+acc.BillingCity+', '+acc.BillingCountry;
        }


    }
}