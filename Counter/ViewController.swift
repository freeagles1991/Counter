//
//  ViewController.swift
//  Counter
//
//  Created by Дима on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CounterLabel: UILabel!
    @IBOutlet weak var ButtonAddCount: UIButton!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCounterText(count: self.count)
    }
    
    @IBAction func ButtonAddCountTap(_ sender: UIButton) {
        count += 1
        setCounterText(count: self.count)
    }
    
    private func setCounterText(count: Int){
        CounterLabel.text = "Значение счетчика: \(count)"
    }
}

