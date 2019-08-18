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
    @FetchRequest(fetchRequest: ToDoItem.getAlltoDpItems()) var toDoItems: FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    
    var body: some View {
        
        NavigationView {
            List {
                Text("sdfasdf")
            }.navigationBarTitle(Text("ToDoItem"))
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
