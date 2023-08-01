//
//  ContentView.swift
//  ToDoList
//
//  Created by scholar on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Button(action: {
                    
                }) {
                    Text("+")
                }
            }
            Spacer()
            
        }
        .padding()
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
