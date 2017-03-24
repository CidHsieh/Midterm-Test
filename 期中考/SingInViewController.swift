//
//  SingInViewController.swift
//  期中考
//
//  Created by Cid Hsieh on 2017/3/24.
//  Copyright © 2017年 Cid Hsieh. All rights reserved.
//

import UIKit

class SingInViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var signInLabel: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    var count = 0
    @IBAction func pressedToConfirm(_ sender: UIButton) {
        if count == 3 {
            alertLabel.text = "只能簽三筆"
            signInLabel.text = ""
            return
        }else if signInLabel.text == ""{
            alertLabel.text = "名字不能留白"
        
        }else if signInLabel.text != "" {
            if let inputText = signInLabel.text {
                textView.text = "\(inputText)\n" + textView.text!
                alertLabel.text = ""
                count = count + 1
            }
        }
        signInLabel.text = ""
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInLabel.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
