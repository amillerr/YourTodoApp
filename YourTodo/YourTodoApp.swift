//
//  YourTodoApp.swift
//  YourTodo
//
//  Created by Artem Axenov on 2022-08-26.
//

import SwiftUI

@main
struct YourTodoApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
