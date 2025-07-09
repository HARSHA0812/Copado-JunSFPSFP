public class OpportunityFetcher {
    
    // Method to retrieve opportunities related to accounts with the Telecommunication industry
    public static List<Opportunity> getTelecomOpportunities() {
        List<Account> telecomAccounts = [SELECT Id FROM Account WHERE Industry = 'Telecommunication'];
        
        if (!telecomAccounts.isEmpty()) {
            List<Id> accountIds = new List<Id>();
            for (Account acc : telecomAccounts) {
                accountIds.add(acc.Id);
            }
            
            // Retrieve opportunities related to the Telecom accounts
            List<Opportunity> telecomOpportunities = [SELECT Id, Name, StageName, CloseDate
                                                     FROM Opportunity
                                                     WHERE AccountId IN :accountIds];
            
            return telecomOpportunities;
        } else {
            return new List<Opportunity>();
        }
    
        }
    }