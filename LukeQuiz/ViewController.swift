//
//  ViewController.swift
//  LukeQuiz
//
//  Created by Aprentice on 14/07/15.
//  Copyright © 2015 Aprentice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!

    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Hide()
        
        RandomQuestions()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 4
        RandomNumber += 1

        switch(RandomNumber){
        case 1:
            
            QuestionLabel.text = "Hello, what is your name?"
            Button1.setTitle("Luke", forState: UIControlState.Normal)
            Button2.setTitle("Jimi", forState: UIControlState.Normal)
            Button3.setTitle("George", forState:UIControlState.Normal)
            Button4.setTitle("Michael", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
        case 2:
            QuestionLabel.text = "What is your last name?"
            Button1.setTitle("Obama", forState: UIControlState.Normal)
            Button2.setTitle("Nixon", forState: UIControlState.Normal)
            Button3.setTitle("Churchill", forState: UIControlState.Normal)
            Button4.setTitle("Kavanagh", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            
            break
        case 3:
            QuestionLabel.text = "Who do you have tattooed on your back?"
            Button1.setTitle("Your own face", forState: UIControlState.Normal)
            Button2.setTitle("Jimi Hendrix", forState: UIControlState.Normal)
            Button3.setTitle("George Bush", forState: UIControlState.Normal)
            Button4.setTitle("Pol Pot", forState: UIControlState.Normal)
            CorrectAnswer = "2"
        
            break
        case 4:
            QuestionLabel.text = "Would you like $500"
            Button1.setTitle("Yes", forState: UIControlState.Normal)
            Button2.setTitle("No", forState: UIControlState.Normal)
            Button3.setTitle("Maybe", forState: UIControlState.Normal)
            Button4.setTitle("What for?", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            
            break
        default:
        
            break
    }
    
}
    
    func Hide(){
            LabelEnd.hidden = true
            Next.hidden = true
    }
    
    func UnHide(){
            LabelEnd.hidden = false
            Next.hidden = false
    }
    

    @IBAction func Button1Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "1"){
            
            LabelEnd.text = "You Are Correct!"
        }
        else {
            
            LabelEnd.text = "You Are Incorrect!"
        }
    }
    
    
    
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "2"){
            
            LabelEnd.text = "You Are Correct!"
        }
        else {
            
            LabelEnd.text = "You Are Incorrect!"
        }
    }
    
    
    @IBAction func Button3Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "3"){
        
            LabelEnd.text = "You Are Correct!"
        }
        else {
            
            LabelEnd.text = "You Are Incorrect!"
        }
    }
    
    
    @IBAction func Button4Action(sender: AnyObject) {
        UnHide()
        
        if (CorrectAnswer == "4"){
            
            LabelEnd.text = "You Are Correct!"
        }
        else {
            
            LabelEnd.text = "You Are Incorrect!"
        }
        
    }
    
    
    @IBAction func Next(sender: AnyObject) {
        
        RandomQuestions()
        Hide()
       
    }
    
    
    
    
  
}

