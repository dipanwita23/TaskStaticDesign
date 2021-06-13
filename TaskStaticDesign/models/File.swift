//
//  File.swift
//  TaskStaticDesign
//
//  Created by Dipanwita Bardhan on 13/06/21.
//


import UIKit
struct TableViewDataSource {

    var name = ["tracker1Updates","drinks","tracker2"]
    var frequency = ["0/2","1/2","0/2"]
    var percentage = ["50%","0%","20%"]
    let colors = [#colorLiteral(red: 0.7835666537, green: 0.9820645452, blue: 0.7542485595, alpha: 1), #colorLiteral(red: 0.9660351872, green: 0.9533712268, blue: 0.987144053, alpha: 1), #colorLiteral(red: 0.9458068013, green: 0.9858543277, blue: 0.9703044295, alpha: 1)]
    let unselectImages = [#imageLiteral(resourceName: "circle-green"), #imageLiteral(resourceName: "circle_yellow") , #imageLiteral(resourceName: "circle _black")]
    let selectImages = [#imageLiteral(resourceName: "check"), #imageLiteral(resourceName: "check-yellow") , #imageLiteral(resourceName: "check-black")]
    let heartImage = [#imageLiteral(resourceName: "check"), #imageLiteral(resourceName: "check-yellow") , #imageLiteral(resourceName: "check-black")]
    
}
func RoundEdge(myView:UIView)  {
    let rectShape = CAShapeLayer()
    rectShape.bounds = myView.frame
    rectShape.position = myView.center
    rectShape.path = UIBezierPath(roundedRect: myView.bounds, byRoundingCorners:  [ .topLeft, .topRight], cornerRadii: CGSize(width: 25, height: 25)).cgPath

   
    myView.layer.mask = rectShape
}
func RoundAllEdge(myView:UIView)  {
    let rectShape = CAShapeLayer()
    rectShape.bounds = myView.frame
    rectShape.position = myView.center
    rectShape.path = UIBezierPath(roundedRect: myView.bounds, byRoundingCorners:  [ .topLeft, .topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 15, height: 15)).cgPath

   
    myView.layer.mask = rectShape
}
