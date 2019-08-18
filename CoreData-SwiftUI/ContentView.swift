//
//  ContentView.swift
//  CoreData-SwiftUI
//
//  Created by Maxim Granchenko on 15.08.2019.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAlltoDpItems()) var toDoItems:FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("What next?")) {
                    HStack {
                        TextField("New item", text: $newToDoItem) {
                            Button(action: {
                                let toDoItem = ToDoItem(context: self.managedObjectContext)
                                toDoItem.title = self.newToDoItem
                                toDoItem.createAt = Date()
                                
                                do {
                                    self.managedObjectContext.save()
                                } catch {
                                   print(error)
                                }
                                
                                self.newToDoItem = ""
                                
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.green)
                                    .imageScale(.large)
                            }
                        }
                    }
                }.font(.headline)
            }
            .navigationBarTitle(Text("ToDoItem"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
