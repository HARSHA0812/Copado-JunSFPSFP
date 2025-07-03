@isTest
private class OpportunityFetcherTest { @isTest
    static void testGetTelecomOpportunities() {
        // Create a test Telecommunication account
        Account testAccount = new Account(Name = 'Test Telecom Account', Industry = 'Telecommunication');
        insert testAccount;

// Create a related opportunity
        Opportunity testOpportunity = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today(), AccountId = testAccount.Id);
        insert testOpportunity;
        // Call the method to fetch Telecom opportunities
        List<Opportunity> resultOpportunities = OpportunityFetcher.getTelecomOpportunities();
        // Assert that the retrieved opportunity list is not empty
        System.assertNotEquals(0, resultOpportunities.size(), 'No opportunities retrieved');
        // 123 Assert that the retrieved opportunity is the one created
        System.assertEquals(testOpportunity.Id, resultOpportunities[0].Id, 'Incorrect opportunity retrieved');
    }
}