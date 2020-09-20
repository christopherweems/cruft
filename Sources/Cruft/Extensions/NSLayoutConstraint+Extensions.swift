//
//  NSLayoutConstraint+Extensions.swift
//  
//
//  Created by Christopher Weems on 9/19/20.
//

import UIKit
import unstandard

public extension NSLayoutConstraint {
    static func activate(@SimpleArrayBuilder<NSLayoutConstraint> _ constraintBuilder: () -> [NSLayoutConstraint]) {
        let constraints = constraintBuilder()
        Self.activate(constraints)
        
    }
    
}

public extension NSLayoutConstraint {
    func withPriority(_ layoutPriority: UILayoutPriority) -> Self {
        self.priority = layoutPriority
        return self
    }
    
    func withPriority(level priorityLevel: UILayoutPriority.Level) -> Self {
        self.priority = .init(priorityLevel)
        return self
    }
    
}
