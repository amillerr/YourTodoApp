//
//  CoreDataManager.swift
//  YourTodo
//
//  Created by Artem Axenov on 2022-08-26.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "YourTodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initilize Core Data \(error)")
            }
        }
    }
}
