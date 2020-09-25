//
//  UIApplication.swift
//  ImageViewer
//
//  Created by Kristian Angyal on 19/07/2016.
//  Copyright © 2016 MailOnline. All rights reserved.
//

import UIKit

extension UIApplication {

    static var applicationWindow: UIWindow {
        return UIApplication.shared.windows.filter {$0.isKeyWindow}.first!
    }

    static var isPortraitOnly: Bool {

        let orientations = UIApplication.shared.supportedInterfaceOrientations(for: nil)

        return !(orientations.contains(.landscapeLeft) || orientations.contains(.landscapeRight) || orientations.contains(.landscape))
    }
}
