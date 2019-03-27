//
//  AnyViewExtension.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

extension UIImageView {
    
    func loadImageUrl(url: String) {
        print("URL \(url)")
        self.af_setImage(withURL: URL(string: url)!, placeholderImage: UIImage(named: "logomamikos"))
    }
}

