//
//  ToDoItem.swift
//  CoreData-SwiftUI
//
//  Created by Maxim Granchenko on 17.08.2019.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createAt: Date?
    @NSManaged public var title: String?
}

extension ToDoItem {
    
    static func getAlltoDpItems() -> NSFetchRequest<ToDoItem> {
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDiscription = NSSortDescriptor(key: "createAt", ascending: true)
        
        request.sortDescriptors = [sortDiscription]
        
        return request
    }
}

