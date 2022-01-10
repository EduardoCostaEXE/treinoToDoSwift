//
//  TasksTableViewController.swift
//  InnovationTasks
//
//  Created by Cabral Costa, Eduardo on 09/01/22.
//

import UIKit

let study = Category(name: "Study", color: UIColor.green)
let freeTime = Category(name: "Free Time", color: UIColor.blue)
let tasks: [Task] = [
    Task(name: "Criar esta lista de tasks", date: Date(), category: study),
    Task(name: "Jogar", date: Date(), category: freeTime)
]

class TasksTableViewController: UITableViewController {
    
    private var dateFormatter: DateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskDescriptionLabel.text = task.name
        
        return cell
    }
}
