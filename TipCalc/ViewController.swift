//
//  ViewController.swift
//  TipCalc
//
//  Created by Shaurya Sinha on 29/01/19.
//  Copyright © 2019 Shaurya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var AC: UIButton!
    @IBOutlet weak var point: UIButton!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    
    @IBAction func oneButton(_ sender: Any) {
//        let bText = Double(billLabel.text! + "1")
//        billLabel.text = "\(bText!.description)"
        billLabel.text = billLabel.text! + "1"
    }
    @IBAction func twoButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "2"
    }
    @IBAction func threeButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "3"
    }
    @IBAction func fourButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "4"
    }
    @IBAction func fiveButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "5"
    }
    @IBAction func sixButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "6"
    }
    @IBAction func sevenButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "7"
    }
    @IBAction func eightButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "8"
    }
    @IBAction func nineButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "9"
    }
    @IBAction func zeroButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "0"
    }
    @IBAction func allClear(_ sender: Any) {
        billLabel.text = ""
    }
    @IBAction func decimalButton(_ sender: Any) {
        billLabel.text = billLabel.text! + "."
    }
    
    @IBAction func calculateNewTip(_ sender: UISegmentedControl) {
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[sender.selectedSegmentIndex]
        
        tipLabel.text = "$\(tip.description)"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billLabel.text = ""
        tipLabel.text = "$0.0"
        one.layer.cornerRadius = 0.5 * one.bounds.size.width
        two.layer.cornerRadius = 0.5 * two.bounds.size.width
        three.layer.cornerRadius = 0.5 * three.bounds.size.width
        four.layer.cornerRadius = 0.5 * four.bounds.size.width
        five.layer.cornerRadius = 0.5 * five.bounds.size.width
        six.layer.cornerRadius = 0.5 * six.bounds.size.width
        seven.layer.cornerRadius = 0.5 * seven.bounds.size.width
        eight.layer.cornerRadius = 0.5 * eight.bounds.size.width
        nine.layer.cornerRadius = 0.5 * nine.bounds.size.width
        zero.layer.cornerRadius = 0.5 * zero.bounds.size.width
        AC.layer.cornerRadius = 0.5 * AC.bounds.size.width
        point.layer.cornerRadius = 0.5 * point.bounds.size.width
        
        billLabel.addObserver(self, forKeyPath: "text", options: [.old, .new], context: nil)
//        tipSegment.addTarget(self, action: Selector(("tipChanged:")), for: .valueChanged)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "text"{
            let bill = Double(billLabel.text!) ?? 0
            let tipPercentages = [0.15, 0.18, 0.2]
            let tip = bill * tipPercentages[tipSegment.selectedSegmentIndex]
            
            tipLabel.text = "$\(tip.description)"
        }
    }
    
//    func tipChanged(segment: UISegmentedControl){
//
//    }


}

