//
//  ViewController+TableViewDataSource.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.kostViewModel.listkost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(self.kostViewModel.listkost[indexPath.row].name)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! KostTableViewCell
        cell.namaKost.text = self.kostViewModel.listkost[indexPath.row].name
        cell.categoryKost.text = self.kostViewModel.listkost[indexPath.row].category
        cell.detailKost.text = self.kostViewModel.listkost[indexPath.row].description
        cell.priceKost.text = self.kostViewModel.listkost[indexPath.row].price
        cell.imageKostView.loadImageUrl(url: self.kostViewModel.listkost[indexPath.row].image_url)
        
    
        return cell
    }
    
  
}


extension ViewController: KostViewModelDelegate {
    func onKostLoaded() {
        self.tableView.reloadData()
    }
    
}
