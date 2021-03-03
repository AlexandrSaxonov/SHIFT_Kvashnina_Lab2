//
//  NavigationController.swift
//  SnapKitTest
//
//  Created by Olka on 03.03.2021.
//

import Foundation
import SnapKit
import UIKit


final class NavigationController: UINavigationController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let vc = ViewController()
        self.pushViewController(vc, animated: true)
    }
}
