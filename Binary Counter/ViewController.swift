//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UITableViewController {
    
       var totalnumber = 0
       var minusnumber = 0
       
       @IBOutlet weak var Total: UILabel!
       
       override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell",for: indexPath) as! CustomCell
           cell.Total = self
           cell.number.text = String(Int(pow(10,Double(indexPath.row))))
               return cell
           }
       
       
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return 15
           }
       

       override func viewDidLoad() {
           tableView.dataSource = self
           Total.text = "Total: \(totalnumber)"
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }


   }

   extension ViewController: BinaryCounterDelegate{
       
       func TotalofNumbers(total: Int) {
          self.totalnumber += total
           Total.text = "Total: \(self.totalnumber)"
       }
       
}

