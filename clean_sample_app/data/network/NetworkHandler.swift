//
//  NetworkHandlen.swift
//  clean_sample_app
//
//  Created by Macbook on 10.10.22.
//

import Foundation


class NetworkHandler{
    
    func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        let session = URLSession.shared
        
        session.dataTask(with: url){(data,response,error) in
            
            if let response = response {
                print(response)
            }
            
            guard let data = data else { return }
            print(data)
            
            do{
                let json = try JSONDecoder().decode(PlaceholderModel.self, from: data)
                print(json)
            }catch{
                print(error)
            }
            
        }.resume()
    }
}
