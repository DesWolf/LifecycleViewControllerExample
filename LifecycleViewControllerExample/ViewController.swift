//
//  ViewController.swift
//  LifecycleViewControllerExample
//
//  Created by Максим Окунеев on 2/18/20.
//  Copyright © 2020 Максим Окунеев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperties = ""
        }
    }

}
