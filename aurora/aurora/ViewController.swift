//
//  ViewController.swift
//  aurora
//
//  Created by 이정우 on 2022/03/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let oneThornView = oneThornView()
        oneThornView.frame = CGRect(x: touches.first!.location(in: self.view).x, y: touches.first!.location(in: self.view).y, width: 3, height: 50)
        oneThornView.backgroundColor = .clear
        self.view.addSubview(oneThornView)
    }
    
    @IBAction func touchClearButton(){
        for view in self.view.subviews {
            if view.isKind(of: oneThornView.self){
                view.removeFromSuperview()
            }
        }
    }

}

class oneThornView : UIView{
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0, y: 50))
        path.lineWidth = 2
        UIColor.systemMint.setStroke()
        path.stroke()
    }
}
