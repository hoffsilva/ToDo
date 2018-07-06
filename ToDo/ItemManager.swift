//
//  ItemManager.swift
//  ToDo
//
//  Created by Cast Group on 28/06/2018.
//  Copyright © 2018 br.hoffsilva. All rights reserved.
//

import Foundation

class ItemManager {
    
    var toDoCount : Int {
        return toDoItems.count
    }
    var doneCount : Int {
        return doneItems.count
    }
    private var toDoItems: [ToDoItem] = []
    private var doneItems: [ToDoItem] = []
    
    func add(_ item: ToDoItem) {
        toDoItems.append(item)
    }
    
    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int) {
        doneItems.append(toDoItems.remove(at: index))
    }
    
    func doneItem(at index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
}
