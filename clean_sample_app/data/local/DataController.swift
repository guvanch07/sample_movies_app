//
//  DataController.swift
//  clean_sample_app
//
//  Created by Macbook on 21.10.22.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Bookwarm")
    
    init(){
        container.loadPersistentStores { descrption, error in
            if let error = error {
                print("core data is faild \(error.localizedDescription)")
            }
        }
    }
}
