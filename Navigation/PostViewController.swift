//
//  PostViewController.swift
//  Navigation
//
//  Created by Максим Золотухин on 22.05.2023.
//

import UIKit

class PostViewController: UIViewController {

    var postTitle: String = "None"

    private lazy var actionButtonBar: UIBarButtonItem = {
        let button = UIBarButtonItem()
        button.title = "Детали поста..."
        button.style = .plain
        button.target = self
        button.action = #selector(onClickNext(_:))

        return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray4
        navigationItem.title = postTitle
        navigationItem.rightBarButtonItem = actionButtonBar

    }

    @objc func onClickNext(_ sender: UIBarButtonItem) {
        let infoViewController = InfoViewController()

        infoViewController.modalTransitionStyle = .flipHorizontal
        infoViewController.modalPresentationStyle = .pageSheet

        present(infoViewController, animated: true)
        }
    
}
