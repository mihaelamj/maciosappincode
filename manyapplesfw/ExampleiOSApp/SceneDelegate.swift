//
//  SceneDelegate.swift
//  ExampleiOSApp
//
//  Created by Mihaela Mihaljevic Jakic on 27.11.2020..
//

import UIKit
import manyapplesfw_iOS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    guard let aScene = (scene as? UIWindowScene) else { return }
    window = AppSceneDelegate.makeSplitViewWindow_iOS(theScene: aScene, theVC: ViewController())
  }

}

