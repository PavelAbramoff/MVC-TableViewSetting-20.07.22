//
//  ViewController.swift
//  MVC-TableViewSetting-20.07.22
//
//  Created by Pavel Абрамов on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var model = [Section]()
    
    private var myView: TableView? {
        guard isViewLoaded else { return nil }
        return view as? TableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = TableView(controller: self)
    }
    
    private func setupView() {
        myView?.setupData(data: model)
    }


}

