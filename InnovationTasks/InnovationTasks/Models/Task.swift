//
//  Task.swift
//  InnovationTasks
//
//  Created by Cabral Costa, Eduardo on 09/01/22.
//

import Foundation

struct Task{
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}
