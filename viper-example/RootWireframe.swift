//
//  RootWireframe.swift
//  viper-example
//
//  Created by Duc Nguyen on 310//16.
//  Copyright © 2016 ND NINJA. All rights reserved.
//

import UIKit

class RootWireframe: NSObject {
	
	let splashScreenWireframe: SplashWireframe?
	var homeWireframe: HomeWireframe?
	
	override init() {
		self.splashScreenWireframe = SplashWireframe.sharedInstance
	}
	
	func application(didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?, window: UIWindow) -> Bool {
		self.splashScreenWireframe?.window = window
		self.homeWireframe = HomeWireframe()
		self.homeWireframe?.window = window
		self.checkIfAnyUserPersistedOrNot()
		return true
	}
	
	func checkIfAnyUserPersistedOrNot() {
		if DataStore.defaultLocalDB.checkUserAvailability() {
			// Home Screen
			self.homeWireframe?.presentHomeViewControllerInWindow()
		} else {
			// Splash Screen
			self.splashScreenWireframe?.presentSplashScreenViewControllerInWindow()
		}
	}
}

