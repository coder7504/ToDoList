//
//  TaskTVC.swift
//  ToDoList
//
//  Created by Asliddin Mahmudov on 20/11/22.
//

import UIKit

class TaskTVC: UITableViewCell {
    
    static let identifier: String = "TaskTVC"
    
    static func nib() -> UINib {
        UINib(nibName: "TaskTVC", bundle: nil)
    }

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var subTitleLbl: UILabel!
    @IBOutlet weak var priorityV: UIView!
    @IBOutlet weak var typeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func updateCell(task: TaskDM, groupType: GroupTypeEnum) {
        
        titleLbl.text = task.title
        subTitleLbl.text = task.subTitle
        priorityV.backgroundColor = task.priority.setPriorityColor()
        
        switch groupType {
        case .new:
            typeView.backgroundColor = .systemGray6
        case .archived:
            typeView.backgroundColor = .systemGray4
        case .finished:
            typeView.backgroundColor = .systemGray2
        case .unarchived:
            print("unarchived")
        case .unFinished:
            print("unFinished")
        case .deleted:
            print("deleted")
        }
        
    }
    
    
    
}
