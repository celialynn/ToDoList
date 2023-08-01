//
//  ToDoItem.swift
//  ToDoList
//
//  Created by scholar on 28/07/2023.
//

import Foundation

class ToDoItem {
    var title = ""
    var isImportant = false
    
    init(title: String = "", isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
