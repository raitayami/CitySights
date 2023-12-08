//
//  DataService.swift
//  CitySights
//
//  Created by Tayami Rai on 06/12/2023.
//

import Foundation

struct DataService{
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    // function is async because it cna be fired off in the background,. so the main thread can be free to handle the ui while this function occurs in the background
    func businessSearch() async -> [Business]{
        
        //Check if API is actaully there
        
        //Code below means confirm that api is real and not nil, else return out of this function businessSearch(), if it does exist, proceed with the code
        
        guard apiKey != nil else {
            return [Business]()
        }
        
        //Create URL
        
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=51.486183376133376&longitude=0.28344345030863044&categories=restaurants&limit=10"){
            
            //Create request
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            //Send request
            
            do{
                let (data, response) = try await URLSession.shared.data(for: request)
                
                // Parse
                
                let decoder = JSONDecoder()
                let result = try decoder.decode(BusinessSearch.self, from: data)
                
                return result.businesses
                    

            }
            catch{
                print(error)
            }
            
        }
        
        return [Business]()
    }
    
     
    
}
