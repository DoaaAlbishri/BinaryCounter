//
//  CustomCell.swift
//  Binary Counter
//
//  Created by admin on 05/12/2021.
//

import UIKit

protocol BinaryCounterDelegate: class
{
    func TotalofNumbers(total:Int)
    
}

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var number: UILabel!
    weak var Total: BinaryCounterDelegate?
    var num:Int!
    
    
    @IBAction func Counter(_ sender: UIButton) {
        num = Int(number.text!)

        if sender.titleLabel!.text == "-" {
                    num = num * -1
        }else{
            num = num * 1

        }
        
        Total?.TotalofNumbers(total: num!)
    }
   
    }

    
