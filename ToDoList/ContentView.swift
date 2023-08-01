//
//  ContentView.swift
//  ToDoList
//
//  Created by scholar on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
   
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                }
            }
            Spacer()
            
        }
        .padding()
        
        List {
            ForEach (toDoItems) {toDoItem in
                Text(toDoItem.title)
            }
        }
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems)
           
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
