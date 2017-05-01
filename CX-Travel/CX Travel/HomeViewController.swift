//
//  HomeViewController.swift
//  CX Travel
//
//  Created by Yao Qingning on 10/23/16.
//  Copyright © 2016 Yao Qingning. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let attractions_home = ["hawaii", "hk", "kyoto", "sydney", "ny"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (attractions_home.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeCell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeViewControllerTableViewCell
        homeCell.homeImage.image = UIImage(named: (attractions_home[indexPath.row] + ".jpg"))
        print("here I did it once \n")
        return (homeCell)
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
