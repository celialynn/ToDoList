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
    @Binding var toDoItems: [ToDoItem]
    
    var body: some View {
        VStack {
            Text("Task title: ")
            TextField("Enter task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            Button(action: {
                self.addTask (title: self.title, isImportant: self.isImportant)
            }) {
                Text("Add")
            }
        }

    }
    private func addTask (title: String, isImportant: Bool = false) {
        let task = ToDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]))
    }
}
