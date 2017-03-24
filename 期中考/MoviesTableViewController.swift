//
//  MoviesTableViewController.swift
//  期中考
//
//  Created by Cid Hsieh on 2017/3/24.
//  Copyright © 2017年 Cid Hsieh. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    
    var newMovies:[Movies] = [
        Movies(name: "異星智慧", date: "上映日期：2017-03-23", logo: "異星智慧", infor: "《異星智慧》由《末日之戰》億萬製片打造，講述在國際太空站的六人小組探測到人類史上最重要的發現之一：在火星上的「生命體」。然而隨著更深入的研究後，竟意外發現這個「生命體」似乎遠超出人類智慧的聰明，甚至會危及人類的生命，他們將被迫做出史上最困難的決定、尋求出路。"),
        Movies(name: "金剛戰士", date: "上映日期：2017-03-24", logo: "金剛戰士", infor: "五名平凡高中生發現自己所住的城鎮和世界受到外星勢力的侵略，他們受到命運的驅使，被賦予了超異能，開始成為捍衛地球的「金剛戰士」，合力對抗邪惡勢力幽冥女王。")
    ]

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newMovies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MoviesTableViewCell
        cell.nameLabel.text = newMovies[indexPath.row].name
        cell.dateLabel.text = newMovies[indexPath.row].date
        cell.logoImage.image = UIImage(named: newMovies[indexPath.row].logo)
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard.init(name:"Main", bundle: nil)
        let pushViewController = storyboard.instantiateViewController(withIdentifier: "MoviesDetailViewController") as! MoviesDetailViewController
        self.navigationController?.pushViewController(pushViewController, animated: true)
        
        if let indexPath = tableView.indexPathForSelectedRow{
            pushViewController.logoImage = newMovies[indexPath.row].logo
            pushViewController.inforOfMovie = newMovies[indexPath.row].infor
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
