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
    func colorWithHexString (hex:String) -> UIColor {
        
        var cString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        
        if (cString.characters.count != 6) {
            return UIColor.gray
        }
        
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
  
}


extension ViewController: KostViewModelDelegate {
    func onKostLoaded() {
        self.tableView.reloadData()
    }
    
}
