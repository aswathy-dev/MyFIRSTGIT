//
//  ViewController.swift
//  GoAnyWhere
//
//  Created by Apple on 06/03/18.
//  Copyright © 2018 Reubro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
              //  print("signed in as \(session.userName)");
                
                let authToken = session?.authToken
                let authTokenSecret = session?.authTokenSecret
                
                
                

            } else {
               // print("error: \(error.localizedDescription)");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
        
    lblMessage.text = NSLocalizedString("Welcome", comment: "")

    }
    
    
    /*
    func login() {
        Twitter.sharedInstance().logIn { [weak self] (session, error) in
            if let error = error, let weakSelf = self {

            } else if let session = session, let weakSelf = self {
                weakSelf.dismiss(animated: true) {
                    weakSelf.delegate?.loginViewController(viewController: weakSelf, didAuthWith: session)
                }
            }
        }
    }
    */
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionChangeLanguage(_ sender: Any) {
        
        let userdef = UserDefaults.standard
        userdef.set(["en", "fr"], forKey: "AppleLanguages")
        userdef.synchronize()
    }
    
}

