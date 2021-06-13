//
//  PopUpViewController.swift
//  TaskStaticDesign
//
//  Created by Dipanwita Bardhan on 13/06/21.
//

import UIKit

class PopUpViewController: UIViewController {
    @IBOutlet weak var BackGroundVw: UIView!
    @IBOutlet weak var middleBackGroundVw: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        RoundAllEdge(myView: BackGroundVw)
        RoundAllEdge(myView: middleBackGroundVw)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   

}
