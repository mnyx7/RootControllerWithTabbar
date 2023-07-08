//
//  ViewController.swift
//  RootControllerWithTabbar
//
//  Created by Minaya Yagubova on 08.03.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
//        let controller = storyboard?.instantiateViewController(withIdentifier: "vc2")
//        controller?.modalPresentationStyle = .fullScreen
//        present(controller!, animated: true)
        
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = scene.delegate as? SceneDelegate {
            UserDefaults.standard.set(true, forKey: "loggedIn")
            sceneDelegate.setSecondRootController(windowScene: scene)
            //UserDefaults
            //Keychain - sensitive data (password, passcode, token, apiKey) - networking
        }
    }
    
}

