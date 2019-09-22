//
//  ViewController.swift
//  cherryUAT
//
//  Created by Swati Rout on 22/09/19.
//  Copyright © 2019 Swati Rout. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageAPICall()
        print("cherry pick called")
    }
    func imageAPICall(){
        let imageUrl = URL(string:"https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")
        let task = URLSession.shared.dataTask(with:imageUrl ?? URL(fileURLWithPath: "")) { (data,response, error) in
            if error == nil{
                let loadedImage = UIImage(data:data! )
                DispatchQueue.main.async {
                    self.imageView.image = loadedImage

                }
            }
        }
        task.resume()
    }


}

