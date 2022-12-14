//
//  ViewController.swift
//  Aditya_C0880466_FT
//
//  Created by apple on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var randomNum: UILabel!
    @IBOutlet weak var oddNum: UILabel!
    @IBOutlet weak var evenNum: UILabel!
    @IBOutlet weak var ansDecision: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.setupEvenLabelTap()
        self.setupOddLabelTap()
        self.setRandomvalue()
        
    }
    
    func setupEvenLabelTap() {
        let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.EvenLabelTapped(_:)))
        self.evenNum.isUserInteractionEnabled = true
        self.evenNum.addGestureRecognizer(labelTap)
    }
    
    
    @objc func EvenLabelTapped(_ sender: UITapGestureRecognizer) {
        let currentNumber = Int(randomNum.text!)
        if isEven(currentNumber!){
            ansDecision.image = UIImage(named: "Correct")
            setRandomvalue()
            let infoAlert = UIAlertController(title: "Result", message: "Congratulations! Correct answer", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Play again!", style: .default, handler: nil))
            self.present(infoAlert, animated: true)
        }else{
            ansDecision.image = UIImage(named: "InCorrect")
            setRandomvalue()
            let infoAlert = UIAlertController(title: "Result", message: "Oops! Wrong answer...correct answer is odd" , preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Play again!", style: .default, handler: nil))
            self.present(infoAlert, animated: true)
        }
    }
    
    func setupOddLabelTap() {
        let labelTap = UITapGestureRecognizer(target: self, action: #selector(self.OddLabelTapped(_:)))
        self.oddNum.isUserInteractionEnabled = true
        self.oddNum.addGestureRecognizer(labelTap)
    }
        
        @objc func OddLabelTapped(_ sender: UITapGestureRecognizer) {
            let currentNumber = Int(randomNum.text!)
            if isEven(currentNumber!){
                ansDecision.image = UIImage(named: "InCorrect")
                setRandomvalue()
                let infoAlert = UIAlertController(title: "Result", message: "Oops! Wrong answer...correct answer is even", preferredStyle: .alert)
                infoAlert.addAction(UIAlertAction(title: "Play again!", style: .default, handler: nil))
                self.present(infoAlert, animated: true)
            }else{
                ansDecision.image = UIImage(named: "Correct")
                setRandomvalue()
                let infoAlert = UIAlertController(title: "Result", message: "Congratulations! Correct answer", preferredStyle: .alert)
                infoAlert.addAction(UIAlertAction(title: "Play again!", style: .default, handler: nil))
                self.present(infoAlert, animated: true)
            }
        }
    
    private func setRandomvalue(){
        let randomInteger = Int.random(in: 1..<100)
        randomNum.text = "\(randomInteger)"
    }
    
    func isEven(_ num: Int) -> Bool {
        if num % 2 == 0{
            return true
        }
        else
        {
            return false
        }
    }
    
}

            
        
