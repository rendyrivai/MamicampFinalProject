//
//  ViewController+TableViewDelegate.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! KostTableViewCell
        if let controller =  self.storyboard?.instantiateViewController(withIdentifier: "DetailKostViewController") as? DetailKostViewController {
            
            controller.title = self.kostViewModel.listkost[indexPath.row].name
            controller.kostModel = self.kostViewModel.listkost[indexPath.row]
            self.show(controller, sender: self)
        } else {
            print("something wrong on opening next page")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
