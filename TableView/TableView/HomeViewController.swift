//
//  HomeViewController.swift
//  TableView
//
//  Created by mac_os on 25/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {

    var tools: [tool]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tools = tool.fetchTools()
        self.tableView.reloadData()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let tools = tools {
            return tools.count
        } else {
            return 3
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        cell.tool = self.tools?[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "Detail"){
            //let displayVC = segue.destination as! DetailViewController
            //displayVC.delegate = self
        }
    }

}
