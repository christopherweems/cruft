//
//  ConfigurableView.swift
//  
//
//  Created by Christopher Weems on 9/19/20.
//

import UIKit

public protocol ConfigurableView: class {
    init(frame: CGRect)

}

public extension ConfigurableView {
    static func withConfiguration(_ configurationHandler: (Self) -> Void) -> Self {
        let new = Self.init(frame: .zero)
        configurationHandler(new)
        return new
    }
    
}

extension UIView: ConfigurableView { }
