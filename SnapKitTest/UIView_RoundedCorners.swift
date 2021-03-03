//
//  UIView_RoundedCorners.swift
//  SnapKitTest
//
//  Created by Olka on 03.03.2021.
//

import UIKit

extension UIView {
  func makeRoundedCorners(masksToBounds: Bool = true) {
    makeRoundedCorners(radius: bounds.height / 2)
  }

  func makeRoundedCorners(radius: CGFloat, masksToBounds: Bool = true) {
    layer.cornerRadius = radius
    layer.masksToBounds = masksToBounds
  }
}
