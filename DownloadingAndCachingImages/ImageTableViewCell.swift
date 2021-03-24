//
//  ImageTableViewCell.swift
//  DownloadingAndCachingImages
//
//  Created by Yotaro Ito on 2021/03/02.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titleImage: UIImageView = {
        let image = UIImageView()
       
        return image
    }()
    
    private let badgeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var representedIdentifier: String = ""
    
    var title: String? {
        didSet {
          label.text = title
        }
      }
      var Image: UIImage? {
        didSet {
          titleImage.image = Image
        }
      }
      
      var badge: UIImage? {
        didSet {
          badgeImageView.image = badge
        }
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        contentView.addSubview(label)
        contentView.addSubview(titleImage)
//        contentView.addSubview(badgeImageView)
        titleImage.frame = contentView.bounds
    }
    override func layoutSubviews() {
        super.layoutSubviews()
//        contentView.addSubview(titleImage)
//        titleImage.frame = contentView.bounds
        
//        titleImage.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        titleImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor).isActive = true
//        titleImage.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        titleImage.widthAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        
//        label.leadingAnchor.constraint(equalTo: titleImage.trailingAnchor).isActive = true
//        label.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor).isActive = true
//        label.heightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
//        label.widthAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
//        
//        badgeImageView.leadingAnchor.constraint(equalTo: titleImage.trailingAnchor).isActive = true
//        badgeImageView.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
//        label.heightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
//        badgeImageView.widthAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true

    }
    
  
   
}
