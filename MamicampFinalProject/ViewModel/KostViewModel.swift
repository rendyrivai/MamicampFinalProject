//
//  KostViewModel.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol KostViewModelDelegate {
    func onKostLoaded ()
}

class KostViewModel{
    var delegate: KostViewModelDelegate!
    var listkost = [KostModel]()
    
    func loadKost() {
        NetworkFacade.callGetApi(url: "https://esjeruks.com/api-mamicamp/public/api/room", parameters: [:]) {
            (json) in
            for object in json["data"].arrayValue {
                let kost = KostModel(object)
                self.listkost.append(kost)
            }
            print(self.listkost)
            self.delegate?.onKostLoaded()
        }
    }
}
