//
//  DrawingView.swift
//  ScribbleGame
//
//  Created by Tejeshreddy on 4/12/24.
//
import UIKit

protocol DrawingViewDelegate: AnyObject {
    // Declare any required methods here
}

class DrawingView: UIView {
    
    weak var delegate: DrawingViewDelegate?
    
    var lineWidth: CGFloat = 1.0
    var lineColor: UIColor = .black
    
    override func draw(_ rect: CGRect) {
        
    }
    
    func clear() {
        
    }
    
    
}
