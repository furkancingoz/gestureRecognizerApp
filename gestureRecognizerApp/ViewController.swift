//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by Furkan Cingöz on 8.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTik: UILabel!
    @IBOutlet weak var gorselTik: UIImageView!
    
    var isLilzey = true
    override func viewDidLoad() {
        super.viewDidLoad()
        gorselTik.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePick))
        
        gorselTik.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePick() {
       
        
        if isLilzey == true {
            gorselTik.image = UIImage(named: "shakira")
            labelTik.text = "Shakira"
            isLilzey = false
        } else {
            gorselTik.image = UIImage(named: "lilzey")
            labelTik.text = "Lil Zey"
            isLilzey = true
            
        }
        
        
    }
    
}
