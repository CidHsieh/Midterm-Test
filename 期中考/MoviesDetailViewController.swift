//
//  MoviesDetailViewController.swift
//  期中考
//
//  Created by Cid Hsieh on 2017/3/24.
//  Copyright © 2017年 Cid Hsieh. All rights reserved.
//

import UIKit

class MoviesDetailViewController: UIViewController {
    
    @IBOutlet weak var logoLabel: UIImageView!
    
    @IBOutlet weak var inforLabel: UILabel!
    
    
    var logoImage = ""
    var inforOfMovie = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        inforLabel.numberOfLines = 0
        inforLabel.text = inforOfMovie
        logoLabel.image = UIImage(named: logoImage)
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
