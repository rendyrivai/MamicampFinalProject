//
//  TambahKostViewController.swift
//  MamicampFinalProject
//
//  Created by reza on 28/03/19.
//  Copyright © 2019 rendy. All rights reserved.
//

import UIKit

class TambahKostViewController: UIViewController {

    @IBOutlet weak var namaKostTF: UITextField!
    @IBOutlet weak var hargaKostTF: UITextField!
    @IBOutlet weak var typeKostSC: UISegmentedControl!
    @IBOutlet weak var categoryKostTF: UITextField!
    @IBOutlet weak var deskripsiKostTF: UITextField!
    @IBOutlet weak var simpanBtn: UIButton!
    
    let url = "https://esjeruks.com/api-mamicamp/public/api/room"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
