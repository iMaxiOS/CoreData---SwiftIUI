//
//  ToDoItemView.swift
//  CoreData-SwiftUI
//
//  Created by Maxim Granchenko on 18.08.2019.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {

    var createAt: String = ""
    var title: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(createAt)
                    .font(.headline)
                Text(title)
                    .font(.caption)
            }
        }
    }
}

#if DEBUG
struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView()
    }
}
#endif
