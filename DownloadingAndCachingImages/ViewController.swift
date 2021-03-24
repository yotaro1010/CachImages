//
//  ViewController.swift
//  DownloadingAndCachingImages
//
//  Created by Yotaro Ito on 2021/03/02.
//

import UIKit

class ViewController: UIViewController{
    

    private let tableView: UITableView = {
        let tv = UITableView()
        return tv
    }()

    var posts: [Post] = []
    
    let networker = NetworkManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.register(ImageTableViewCell.self, forCellReuseIdentifier: "ImageTableViewCell")
     

        tableView.delegate = self
        tableView.dataSource = self

    
        networker.posts(query: "ocean") { [weak self] posts, error in
            if let error = error {
              print("error", error)
              return
            }
            
            self?.posts = posts!
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
        let post = posts[indexPath.row]
        
        cell.Image = nil
        
        let representedIdentifier = post.id
        cell.representedIdentifier = representedIdentifier
        
        func image(data: Data?) -> UIImage?{
            if let data = data {
                return UIImage(data: data)
            }
            return UIImage(systemName: "picture")
        }
        
        networker.image(post: post){data, error in
            if let data = data {
                let image = UIImage(data: data)
                DispatchQueue.main.async{
                    if (cell.representedIdentifier == representedIdentifier) {
                        cell.Image = image
                    }
                }
            }
        }
        
        return cell
    }

}

