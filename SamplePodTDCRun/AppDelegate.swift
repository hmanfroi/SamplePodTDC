//
//  AppDelegate.swift
//  SamplePodTDCRun
//
//  Created by Henrique Manfroi da Silveira on 10/11/19.
//  Copyright © 2019 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit
import SamplePodTDC

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let presentation = Presentation(title: "Modularization", authors: ["Henrique Manfroi da Silveira"])
        let vm = PresentationViewModel(presentation: presentation)
        let initialVC: UIViewController = PresentationViewController(viewModel: vm)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = initialVC
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

