//
//  ViewDonationsController.swift
//  Give
//
//  Created by Amy Pollmann on 11/24/18.
//  Copyright © 2018 Amy Pollmann. All rights reserved.
//

import UIKit

class ViewDonationsController: UITableViewController {
        //let cellId = "cellId"
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupTableView()
        }
        
        func setupTableView(){
            //Registers a class for use in creating new table cells.
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
            
        }
    
}
extension ViewDonationsController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "Hello, World"
        
        return cell
    }
}



//        let cellId = "cellId"
//        var products = singleton.sharedInstance.Donations
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            
//            tableView.register(UITableView.self, forCellReuseIdentifier: "cellId")
//            
//            tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
//            
//            // Do any additional setup after loading the view, typically from a nib.
//
//        }
//        override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//        }
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
//            let currentLastItem = products[indexPath.row]
//            cell.textLabel?.text = currentLastItem.productName
//            return cell
//        }
//        
//        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return products.count
//        }
//}
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem.title = "Donations"
//        view.backgroundColor = GREEN_THEME
//        
//        tableView.register(MyCell.self, forCellReuseIdentifier: "cellId")
//        
//        tableView.register(Header.self, forCellReuseIdentifier: "headerId")
//        
//        tableView.sectionHeaderHeight = 50
//        
//        //setupTextFieldComponents()
//        //setupLocationPicker()
//        
//    }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
//    }
//    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return tableView.dequeueReusableCell(withIdentifier: "headerId")
//    }
//    
//}
//
//class Header: UITableViewHeaderFooterView {
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//        setupViews()
//    }
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder: ) has not been implemented")
//    }
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "My Header"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        return label
//    }()
//    
//    func setupViews() {
//        addSubview(nameLabel)
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:| [v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
//    }
//}
//
//class MyCell: UITableViewCell {
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupViews()
//    }
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder: ) has not been implemented")
//    }
//    let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Sample Item"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        return label
//    }()
//    
//    func setupViews() {
//        addSubview(nameLabel)
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:| [v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
//    }
//    
//}
