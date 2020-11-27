//
//  AppSceenDelegate+SplitViewVC.swift
//  manyapplesfw
//
//  Created by Mihaela Mihaljevic Jakic on 27.11.2020..
//

import Foundation

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

//extension AppDelegate {
  #if os(OSX)
  func makeSplitViewWindow_Mac(theVC: AViewController) -> AWindow? {
    let win = AWindow(contentRect: NSMakeRect(0, 0, AScreen.main?.frame.width ?? 100, AScreen.main?.frame.height ?? 100), // for full height and width of screen
                      styleMask: [.miniaturizable, .closable, .resizable, .titled],
                      backing: .buffered,
                      defer: false)
    win.title = "Many 🍎!"
    win.contentViewController = theVC
    win.makeKeyAndOrderFront(nil)
    return win
  }
  #endif
//}

#if os(iOS) || os(tvOS)

  func makeSplitViewWindow_iOS(theScene:UIWindowScene, theVC: AViewController) -> AWindow {
    let window = AWindow(frame: theScene.coordinateSpace.bounds)
    window.windowScene = theScene
    window.rootViewController = theVC
    window.makeKeyAndVisible()
    return window
  }


//extension SceneDelegate {
//  func makeSplitViewWindow_iOS(theScene:UIWindowScene, theVC: AViewController) {
//    window = AWindow(frame: theScene.coordinateSpace.bounds)
//    window?.windowScene = theScene
//    window?.rootViewController = theVC
//    window?.makeKeyAndVisible()
//  }
//}
#endif
