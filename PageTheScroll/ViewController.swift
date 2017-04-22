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
        
        var contentWidth: CGFloat = 0
        //let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2
        {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            
            var newX: CGFloat = 0.0
            
            newX = scrollView.frame.midX + scrollView.frame.midX * CGFloat(x)
            contentWidth += newX
            scrollView.addSubview(imageView)
            
            imageView.frame=CGRect(x: (newX)-75, y: (scrollView.frame.midY)-75, width: 150, height: 150)
            
            
            
        }
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height
        )
        
        print (scrollView.frame.size.width)
    }
    
  

}

