//
//  DetailKostViewController.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import UIKit


class DetailKostViewController: UIViewController {
    
    @IBOutlet weak var imageKostView: UIImageView!
    @IBOutlet weak var namaKost: UILabel!
    @IBOutlet weak var detailKost: UILabel!
    @IBOutlet weak var priceKost: UILabel!
    @IBOutlet weak var categoryKost: UILabel!
    @IBOutlet weak var descriptionKost: UILabel!
    
    var kostModel : KostModel!


    override func viewDidLoad() {
        super.viewDidLoad()
        updateKost()

        // Do any additional setup after loading the view.
    }
    
    func updateKost(){
        imageKostView.loadImageUrl(url: kostModel.image_url)
        namaKost.text = kostModel.name
        detailKost.text = kostModel.type
        categoryKost.text = kostModel.category
        descriptionKost.text = kostModel.description
        priceKost.text = "- " + kostModel.price
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
