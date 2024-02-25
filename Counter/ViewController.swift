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
    @IBOutlet weak var ButtonSubstractCount: UIButton!
    @IBOutlet weak var ButtonResetCount: UIButton!
    @IBOutlet weak var HistoryTextView: UITextView!
    
    var count: Int = 0
    var historyText: String = "История изменений:"
    var counterText: String = "Значение счетчика:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCounterText(count: self.count)
        HistoryTextView.text = historyText
    }
    
    @IBAction func ButtonAddCountTap(_ sender: UIButton) {
        count += 1
        setCounterText(count: self.count)
        setHistoryText(text: "значение изменено на +1")
    }
    
    
    @IBAction func ButtonSubstractCountTap(_ sender: UIButton) {
        if count > 0{
            count -= 1
            setCounterText(count: self.count)
            setHistoryText(text: "значение изменено на -1")
        }
        else{
            setHistoryText(text: "попытка уменьшить значение счётчика ниже 0")
        }
       
    }
    
    @IBAction func ButtonResetCountTap(_ sender: UIButton) {
        count = 0
        setCounterText(count: self.count)
        setHistoryText(text: "значение сброшено")
    }
        
    private func setCounterText(count: Int){
        CounterLabel.text = "\(counterText) \(count)"
    }
    
    private func setHistoryText(text: String){
        let date = Date()
        HistoryTextView.text.append("\n \(date): \(text)")
    }
    
}

