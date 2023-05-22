//
//  FeedViewController.swift
//  Navigation
//
//  Created by Максим Золотухин on 19.05.2023.
//

import UIKit

struct Post {

    var title: String
}

class FeedViewController: UIViewController {

    var post = Post(title: "Мой пост!")

    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Перейти в пост", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGray6
        view.addSubview(actionButton)

        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            actionButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -20.0
            ),
            actionButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 44.0)
        ])

        actionButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)

    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        let postViewController = PostViewController()
        postViewController.postTitle = post.title
        navigationController?.pushViewController(postViewController, animated: true)

    }


}
