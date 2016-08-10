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
    var person1 :Int = 0
    
    var X : [Int] = [0,40,80,120,160,200,240,280,
                     280,240,200,160,120,80,40,0,
                     0,40,80,120,160,200,240,280,
                     280,240,200,160,120,80,40,0,
                     0,40,80,120,160,200,240,280,
                     280,240,200,160,120,80,40,0,
                     0,40,80,120,160,200,240,280,
                     280,240,200,160,120,80,40,0]
    var Y : [Int] = [320,320,320,320,320,320,320,320,
                     280,280,280,280,280,280,280,280,
                     240,240,240,240,240,240,240,240,
                     200,200,200,200,200,200,200,200,
                     160,160,160,160,160,160,160,160,
                     120,120,120,120,120,120,120,120,
                     80,80,80,80,80,80,80,80,
                     40,40,40,40,40,40,40,40]
    
    func logo1_view(){
        logo1view.image=logo1
        logo1view.frame.size.width=40
        logo1view.frame.size.height=40
        UIView.animateWithDuration(0.6, animations: {
        self.logo1view.frame.origin.x = CGFloat( self.X[self.person1])
        self.logo1view.frame.origin.y = CGFloat( self.Y[self.person1])
        })
        //logo1view.frame.origin.x = CGFloat(0)
        //logo1view.frame.origin.y = CGFloat(320)
        view.addSubview(logo1view)
    }
    
    func logo2_view(){
        logo2view.image=logo2
        logo2view.frame.size.width=40
        logo2view.frame.size.height=40
        view.addSubview(logo2view)
    }
    
    func cube_go()->Int{
        var a :Int
        a=Int(arc4random_uniform(6)+1)
        let myfile: String = String(a) + ".png"
        let cubimg : UIImage = UIImage(named: myfile)!
        cube_img.image = cubimg
        view.addSubview(cube_img)
        return a

    }
    
    @IBOutlet var cube_img: UIImageView!
    @IBAction func go(sender: UIButton) {
        //обработка нажатии кнопки
        person1 += cube_go()
        if person1<63
        {
          logo1_view()
        }
        
        
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

