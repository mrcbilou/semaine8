# Rocket_Elevator_GraphQL_API
## Members of the team
- **[Loïc Rico](https://github.com/ricoloic)**

- **[Anthony Pageau](https://github.com/ricoloic)**

- **[Jean-Francois Taillefer](https://github.com/ricoloic)**

- **[Louis-Felix Beland](https://github.com/mrcbilou)**

- **[Alimourana Balde](https://github.com/alimourana)**

## How to query the data of all the relevant entities of the operational database


1- **Retrieving the address of the building, the beginning and the end of the intervention for a specific intervention.**	
	
	{ 
		"query": "query{ intervention(id:64){ startIntervention endIntervention address{ suiteOrApartment numberAndStreet city buildingId } } }" 
	}
2- **Retrieving customer information and the list of interventions that took place for a specific building**

    { 
	    "query": "query{ building(id: 15){ interventions{startIntervention endIntervention } customer {id companyContactFullName firstName lastName} } }" 
    }
    
3- **Retrieval of all interventions carried out by a specified employee with the buildings associated with these interventions including the details (Table BuildingDetails) associated with these buildings.**

	{ 
	   "query": "query{ employee(id:3){ interventions{ id building{ address{ numberAndStreet city } customer{ firstName lastName } buildingDetail{ informationKey value }}}}}" 
	}
    

**IMPORTANT NOTE**
	

 - You can change the id field in the queries above to get data for a specified id
 - Based on the databases columns you can add fields in the query to get more detailed data
 - All these queries are "POST" Requests
 
