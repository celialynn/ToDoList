//
//  NewToDoView.swift
//  ToDoList
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Task title: ")
            TextField("Enter task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            Button(action: {
                
            }) {
                Text("Add")
            }
        }

    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
