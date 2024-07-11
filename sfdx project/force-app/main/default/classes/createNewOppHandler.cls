public with sharing class createNewOppHandler {

    //@InvocableMethod(label='Create New Opportunities' description='Create New Opportunities when a new Account is created and the Annual Revenue is greater than 50000' category='Account')
    public static void createNewOppHandlerMethod(List<Account> accList){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.AccountId = acc.Id;
            opp.Name = acc.Name + 'Opportunity';
            opp.StageName = 'Prospecting';
            opp.CloseDate = Date.today() + 90;
            opp.Amount = 1000;
            oppList.add(opp);
        }

        if(oppList.size() > 0){
            insert oppList;
        }
    }
}