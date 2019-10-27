//
//  ProfileViewController.swift
//  ButtonAnimation
//
//  Created by Юрий Нориков on 20.10.2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate {
    let tableView = UITableView.init(frame: .zero, style: UITableView.Style.grouped)
    var selectedRow: Int = 0
    let dataSource = DataSource()
    let vc = InputViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Settings"
        dataSource.createProductArray()
        tableView.register(ProductCell.self, forCellReuseIdentifier: dataSource.cellId)
//        tableView.dataSource = dataSource
        tableView.delegate = self
        
    }
    
    private func updateLayout(with size: CGSize) {
        tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    
    override func viewWillLayoutSubviews() {
        updateLayout(with: view.frame.size)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("back")
        print(vc.textField.text!)
        view.backgroundColor = UIColor.red
        if vc.textField.text != "" {
            dataSource.products[selectedRow].productName = vc.textField.text!
        }
        tableView.dataSource = dataSource
        tableView.reloadData()
        view.addSubview(tableView)
        dataSource.products.forEach({element in
            print(element.productName)
        })
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        print(indexPath.row)
        //        print(dataSource.products[indexPath.row].productName)
        print("ok")
        self.selectedRow = indexPath.row
        vc.text = dataSource.products[indexPath.row]
        self.navigationController?.pushViewController(vc,animated: true)
    }
}

