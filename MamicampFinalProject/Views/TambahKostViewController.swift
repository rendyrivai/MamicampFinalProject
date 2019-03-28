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
    
    
    @IBAction func simpan(_ sender: Any) {
        if (isDataValid()) {
            let postParam: [String: String] = [
                "name": namaKostTF.text!,
                "description": deskripsiKostTF.text!,
                "type": typeKostSC.titleForSegment(at: typeKostSC.selectedSegmentIndex)!,
                "price": hargaKostTF.text!,
                "category": categoryKostTF.text!
            ]
            NetworkFacade.callPostApi(url: "https://esjeruks.com/api-mamicamp/public/api/room", parameters: postParam) {
            (json) in
            print("JSON \(json)")
            }
        }
    }
    
    private func isDataValid() -> Bool {
        var isValid = false
        if (self.namaKostTF.text?.isEmpty == true) {
            print("Nama depan harus diisi")
        } else if (self.namaKostTF.text!.count < 3) {
            print("Nama depan minimal 3 karakter")
        } else if (self.deskripsiKostTF.text?.isEmpty == true) {
            print("Nama depan harus diisi")
        } else if (self.deskripsiKostTF.text!.count < 3) {
            print("Nama depan minimal 3 karakter")
        } else if (self.hargaKostTF.text?.isEmpty == true) {
            print("Nama depan harus diisi")
        } else if (self.hargaKostTF.text!.count < 3) {
            print("Nama depan minimal 3 karakter")
        } else if (self.categoryKostTF.text?.isEmpty == true) {
            print("Nama depan harus diisi")
        } else if (self.categoryKostTF.text!.count < 3) {
            print("Nama depan minimal 3 karakter")
        } else {
            isValid = true
        }
        return isValid
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
