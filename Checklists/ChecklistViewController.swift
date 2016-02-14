//
//  ViewController.swift
//  Checklists
//
//  Created by scott.jun on 2016. 1. 6..
//  Copyright © 2016년 Jsoft. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController, AddItemViewControllerDelegate {
    
    var items: [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        let row0item = ChecklistItem()
        row0item.text = "구원하심이 보좌에 앉으신 우리 하나님과 어린 양에게 있도다(계 7:10)."
        row0item.checked = false
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "내가 너로 여자와 원수가 되게 하고 네 후손도 여자의 후손과 원수가 되게 하리니 여자의 후손은 네 머리를 상하게 할 것이요 너는 그의 발꿈치를 상하게 할 것이니라”(창 3:15)."
        row1item.checked = false
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "내가 너와 함께 있어 네가 어디로 가든지 너를 지키며 너를 이끌어 이 땅으로 돌아오게 할지라 내가 네게 허락한 것을 다 이루기까지 너를 떠나지 아니하리라”(창 28:15)"
        row2item.checked = false
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "한나가 기도하여 이르되 내 마음이 여호와로 말미암아 즐거워하며 내 뿔이 여호와로 말미암아 높아졌으며 내 입이 내 원수들을 향하여 크게 열렸으니 이는 내가 주의 구원으로 말미암아 기뻐함이니이다”(삼상 2:1)"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "또 그들에게 하나님의 선한 손이 나를 도우신 일과 왕이 내게 이른 말씀을 전하였더니 그들의 말이 일어나 건축하자 하고 모두 힘을 내어 이 선한 일을 하려 하매”(느 2:18)."
        row4item.checked = false
        items.append(row4item)
        
        let row5item = ChecklistItem()
        row5item.text = "인자가 온 것은 잃어버린 자를 찾아 구원하려 함이니라”(눅 19:10)."
        row5item.checked = false
        items.append(row5item)
        
        let row6item = ChecklistItem()
        row6item.text = "수고하고 무거운 짐 진 자들아 다 내게로 오라 내가 너희를 쉬게 하리라”(마 11:28)."
        row6item.checked = false
        items.append(row6item)
        
        let row7item = ChecklistItem()
        row7item.text = "그들이 서로 말하되 길에서 우리에게 말씀하시고 우리에게 성경을 풀어 주실 때에 우리 속에서 마음이 뜨겁지 아니하더냐 하고 (눅 24:32)."
        row7item.checked = false
        items.append(row7item)
        
        let row8item = ChecklistItem()
        row8item.text = "그들이 베드로와 요한이 담대하게 말함을 보고 그들을 본래 학문 없는 범인으로 알았다가 이상히 여기며 또 전에 예수와 함께 있던 줄도 알고”(행 4:13)."
        row8item.checked = false
        items.append(row8item)
        
        let row9item = ChecklistItem()
        row9item.text = "이 썩을 것이 썩지 아니함을 입고 이 죽을 것이 죽지 아니함을 입을 때에는 사망을 삼키고 이기리라고 기록된 말씀이 이루어지리라 (고전 15:54)."
        row9item.checked = false
        items.append(row9item)
        
        let row10item = ChecklistItem()
        row10item.text = "그러나 너희는 택하신 족속이요 왕같은 제사장들이요 거룩한 나라요 그의 소유가 된 백성이니 이는 너희를 어두운 데서 불러 내어 그의 기이한 빛에 들어가게 하신 이의 아름다운 덕을 선포하게 하려 하심이라”(벧전 2:9)."
        row10item.checked = false
        items.append(row10item)
        
        let row11item = ChecklistItem()
        row11item.text = "볼지어다 내가 문 밖에 서서 두드리 노니 누구든지 내 음성을 듣고 문을 열면 내가 그에게로 들어가 그와 더불어 먹고 그는 나와 더불어 먹으리라”(계 3:20)."
        row11item.checked = false
        items.append(row11item)
        
        let row12item = ChecklistItem()
        row12item.text = "모든 눈물을 그 눈에서 닦아 주시니 다시는 사망이 없고 애통하는 것이나 곡하는 것 이나 아픈 것이 다시 있지 아니하리니 처음 것들이 다 지나갔음이러라”(계 21:4)."
        row12item.checked = false
        items.append(row12item)
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
        let item = items[indexPath.row]
        
        configureTextForCell(cell, withChecklistItem: item)
        configureCheckmarkForCell(cell, withChecklistItem: item)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmarkForCell(cell, withChecklistItem: item)
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureCheckmarkForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        
        let label = cell.viewWithTag(1001) as! UILabel
        
        if item.checked {
            label.text = "√"
        } else {
            label.text = ""
        }
    }
    
    func configureTextForCell(cell: UITableViewCell, withChecklistItem item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        // 1
        items.removeAtIndex(indexPath.row)
        // 2
        let indexPaths = [indexPath]
        tableView.deleteRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
    }
    
    func addItemViewControllerDidCancel(controller: AddItemViewController) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func addItemViewController(controller: AddItemViewController, didFinishAddingItem item: ChecklistItem) {
        
        let newRowIndex = items.count
        
        items.append(item)
        
        let indexPath = NSIndexPath(forRow: newRowIndex, inSection: 0)
        let indexPaths = [indexPath]
        tableView.insertRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "AddItem" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! AddItemViewController
            controller.delegate = self
        } else if segue.identifier == "EditItem" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! AddItemViewController
            controller.delegate = self
            
            if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell) {
                controller.itemToEdit = items[indexPath.row]
            }
        }
    }
    
}
