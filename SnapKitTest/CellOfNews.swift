//
//  CellOfNews.swift
//  SnapKitTest
//
//  Created by Olka on 03.03.2021.
//

import Foundation
import SnapKit
import UIKit

class CellOfNews: UITableViewCell {
  
  lazy var imgView: UIImageView = {
    let image = UIImageView()
    image.image = UIImage()
    image.image = nil
    return image
  }()
  
  lazy var titleLabel: UILabel = {
    let title = UILabel()
    title.font = UIFont(name: "Helvetica", size: 30)
    title.backgroundColor = .clear
    title.textColor = #colorLiteral(red: 0.4862745098, green: 0.4901960784, blue: 0.4941176471, alpha: 1)
    return title
  }()
  
  lazy var descriptionLabel: UILabel = {
    let description = UILabel()
    description.numberOfLines = 3
    description.font = UIFont(name: "Helvetica", size: 15)
    description.backgroundColor = .clear
    description.textColor = #colorLiteral(red: 0.4862745098, green: 0.4901960784, blue: 0.4941176471, alpha: 1)
    return description
  }()
  
  lazy var dateLabel: UILabel = {
    let date = UILabel()
    date.font = UIFont(name: "Helvetica", size: 13)
    date.backgroundColor = .clear
    date.textColor = #colorLiteral(red: 0.4862745098, green: 0.4901960784, blue: 0.4941176471, alpha: 1)
    return date
  }()
  
  lazy var view: UIView = {
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 0.8431372549, green: 0.8431372549, blue: 0.8431372549, alpha: 1)
    return view
  }()
  
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    addSubviews()
    setupLayout()
  }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  func addSubviews() {
    addSubview(imgView)
    imgView.addSubview(view)
    view.addSubview(titleLabel)
    view.addSubview(descriptionLabel)
    view.addSubview(dateLabel)
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    imgView.image = nil
  }
  
  func setupLayout() {
    
    imgView.layer.cornerRadius = 10
    imgView.layer.masksToBounds = true
    imgView.snp.makeConstraints { (make) in
      make.left.equalToSuperview().offset(15)
      make.right.equalToSuperview().offset(-15)
      make.bottom.equalToSuperview().offset(-15)
      make.top.equalToSuperview().offset(15)
    }
    
    view.snp.makeConstraints { (make) in
      make.top.equalTo(imgView.snp.top).offset(150)
      make.left.equalTo(imgView.snp.left)
      make.right.equalTo(imgView.snp.right)
      make.bottom.equalTo(imgView.snp.bottom)
    }
    
    titleLabel.snp.makeConstraints { (make) in
      make.top.equalTo(view.snp.top).offset(10)
      make.left.equalTo(view.snp.left).offset(10)
      make.right.equalTo(view.snp.right).offset(-10)
    }
    
    descriptionLabel.snp.makeConstraints { (make) in
      make.top.equalTo(titleLabel.snp.bottom).offset(5)
      make.left.equalTo(view.snp.left).offset(10)
      make.right.equalTo(view.snp.right).offset(-10)
      make.bottom.equalTo(view.snp.bottom).offset(-30)
    }
    
    dateLabel.snp.makeConstraints { (make) in
      make.bottom.equalTo(view.snp.bottom).offset(-10)
      make.right.equalTo(view.snp.right).offset(-10)
    }
    
  }
}
