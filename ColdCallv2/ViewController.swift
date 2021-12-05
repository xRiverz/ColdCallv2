//
//  ViewController.swift
//  ColdCallv2
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var names: UILabel!
    let name : [String] = [ "Anhar" , "Ahme" , "Rahaf" , "Khaled" , "Rwan" , "Yaser" ]
    @IBOutlet weak var numbers : UILabel!
    @IBAction func coldcallPressed(_ sender: UIButton) {
        let no = Int.random(in: 1...5)
        names.text = name.randomElement()!
        numbers.text = String(no)
        if (no < 3){
            numbers.textColor = UIColor.red
        }
        else if (no < 5 && no > 2 ){
            numbers.textColor = UIColor.orange
        }
        else{
            numbers.textColor = UIColor.green        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        names.text = "Click Me"
        numbers.text = ""
    }


}

