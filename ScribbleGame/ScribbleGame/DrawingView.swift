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
    
    var lineWidth: CGFloat = 1.0 // Add a property for line width
    
    var lineColor: UIColor = .black // Add a property for line color
    
    override func draw(_ rect: CGRect) {
        // Custom drawing code
        // Implement your drawing logic here
        // For example, you could draw lines, shapes, etc.
    }
    
    func clear() {
        // Implement logic to clear the drawing
    }
}
