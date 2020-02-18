//
//  SecondViewController.swift
//  LifecycleViewControllerExample
//
//  Created by Максим Окунеев on 2/18/20.
//  Copyright © 2020 Максим Окунеев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var someProperties: String? {
        didSet{
           print("Загрузка значения someProperties")
        }
    }
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet{
            print("Загрузка кнопки closeButton")
        }
    }
    
    // Срабатывает после нажития кнопки перехода на View
    override func awakeFromNib() {
        print("AwakeFromNib Срабатывает после нажития кнопки перехода на View")
    }
    
    // Срабатывает при загрузке View
    override func viewDidLoad() {
         super.viewDidLoad()
        print("ViewDidload - срабатывает при загрузке View")
     }
    
    //Срабатывает перед появлением вью на экране
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear - срабатывает перед появлением вью на экране")
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        print("updateViewConstraints - тут можно изменить значение констант констрейнтов")
    }
    //Срабатывает перед тем когда размер вью поменяется под размер экрана
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews - срабатывает перед тем, когда размер вью поменяется под размер экрана")
    }
    
    // Тут срабатывают Autolayout
    
    //Срабатывает после того, когда размер вью поменяется под размер экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews - срабатывает после того, когда размер вью поменяется под размер экрана")
        // тут можно отследить какая ячейка была выделена или на каком месте остался scrollView
    }
    
    //Срабатывает перед поворотом экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition - срабатывает перед поворотом экрана")
    }
    
    //Срабатывает при нехватке памяти
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Срабатывает когда экран появился
    override func viewDidAppear(_ animated: Bool) {
        print("ViewWDidAppear - срабатывает когда экран появился")
    }
    
    //Срабатывает  перед тем как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear - срабатывает  перед тем как вью закроется")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
         print("viewDidDisappear - срабатывает  после того как вью закроется")
    }
    
    //Выгружает объект из памяти
    deinit{
        print("deinit - выгружает объект из памяти")
    }
    
    @IBAction func close(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}

