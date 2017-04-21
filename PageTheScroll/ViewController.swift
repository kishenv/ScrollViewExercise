//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Kishen Vinod on 4/18/17.
//  Copyright © 2017 Kishen Vinod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0...2
        {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            
           // var newX: CGFloat = 0.0
            
          //  newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
        //    scrollView.addSubview(imageView)
          //  imageView.frame=CGRect(x: 0, y: view.frame.size.height/2, width: 150, height: 150)
            
        }
        print ("Count: \(images.count)")
        
    }

  

}

