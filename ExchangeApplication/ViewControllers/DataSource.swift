//
//  DataSource.swift
//  ExchangeApplication
//
//  Created by Юрий Нориков on 26.10.2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

import UIKit

class DataSource : NSObject, UITableViewDataSource {
    
    public let cellId = "cellId"
    var products:[Product] = [Product]()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductCell
        let currentLastItem = products[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        cell.product = currentLastItem
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    
    func createProductArray() {
        products.append(Product(productName: "Glasses", productImage: UIImage(named: "wallet-7")!))
        products.append(Product(productName: "Desert", productImage: UIImage(named: "home-7")!))
        products.append(Product(productName: "Camera Lens", productImage:  UIImage(named: "gold-7")!))
    }
    

}
