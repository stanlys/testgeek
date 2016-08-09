//
//  ViewController2.swift
//  test_Geek
//
//  Created by iMac on 08.08.16.
//  Copyright © 2016 iMac. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    let logo1 : UIImage = UIImage(named: "logo1.png")!
    let logo1view :UIImageView = UIImageView()
    let logo2 : UIImage = UIImage(named: "logo2.png")!
    let logo2view :UIImageView = UIImageView()
    func logo1_view(){
        logo1view.image=logo1
        logo1view.frame.size.width=40
        logo1view.frame.size.height=40
        view.addSubview(logo1view)
    }
    
    func logo2_view(){
        logo2view.image=logo2
        logo2view.frame.size.width=40
        logo2view.frame.size.height=40
        view.addSubview(logo2view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo1_view()
        logo2_view()
        NSLog("ok2")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

