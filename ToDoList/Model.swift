//
//  Model.swift
//  ToDoList
//
//  Created by mac on 14.02.2024.
//

import Foundation

var ToDoItems: [String] = []

func addItem(nameItem: String) {
    if nameItem != "" {
        ToDoItems.append(nameItem)
    }
    else {
        ToDoItems.append("-")
    }
    saveData()
}

func removeItem(index: Int) {
    ToDoItems.remove(at: index)
    saveData()
}

func saveData() {
    UserDefaults.standard.setValue(ToDoItems, forKey: "ToDoData")
    UserDefaults.standard.synchronize()
}

func loadData() {
    if let array = UserDefaults.standard.array(forKey: "ToDoData") as? [String] {
        ToDoItems = array
    }
    else {
        ToDoItems = ["Hello World"]
    }
}
