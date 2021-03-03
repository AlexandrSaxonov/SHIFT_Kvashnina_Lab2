//
//  ViewController.swift
//  SnapKitTest
//
//  Created by Lidia Ivanova on 01.03.2021.
//

import SnapKit
import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addScrollView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    private func addScrollView() {
        let scrollView = UIScrollView()
        self.view.addSubview(scrollView)
        scrollView.backgroundColor = .white
        scrollView.snp.makeConstraints { (make) in
            make.bottom.top.left.right.equalToSuperview()
        }
        
        let backgroundView = UIView()
        scrollView.addSubview(backgroundView)
        backgroundView.snp.makeConstraints { (make) in
            make.bottom.top.left.right.equalToSuperview()
            make.width.equalTo(self.view.bounds.width)
        }
        
        let labelLenta = UILabel()
        labelLenta.text = "LENTA"
        labelLenta.font = UIFont(name: "Times", size: 30)
        labelLenta.textColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.2352941176, alpha: 1)
        backgroundView.addSubview(labelLenta)
        labelLenta.snp.makeConstraints{ (make) in
            make.top.equalToSuperview().inset(156)
            make.centerX.equalToSuperview()
        }
        
        let labelSubtitle = UILabel()
        labelSubtitle.text = "Новости в России и в мире"
        labelSubtitle.font = UIFont(name: "Times", size: 15)
        labelSubtitle.textColor = #colorLiteral(red: 0.5921568627, green: 0.5921568627, blue: 0.5921568627, alpha: 1)
        backgroundView.addSubview(labelSubtitle)
        labelSubtitle.snp.makeConstraints{ (make) in
            make.top.equalToSuperview().inset(208)
            make.centerX.equalToSuperview()
        }
        
        let view1 = UIView()
        view1.makeRoundedCorners(radius: 30)
        view1.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        backgroundView.addSubview(view1)
        view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(274)
            make.centerX.equalTo(backgroundView)
            make.height.equalTo(232)
            make.width.equalTo(223)
        }
        
        let nameOfSourceImage = UIImageView(image: #imageLiteral(resourceName: "Снимок экрана 2021-03-01 в 16.06 1.jpg"))
        backgroundView.addSubview(nameOfSourceImage)
        nameOfSourceImage.snp.makeConstraints { (make) in
            make.centerY.equalTo(view1)
            make.centerX.equalTo(view1)
        }
        
        let view2 = UIView()
        view2.makeRoundedCorners(radius: 30)
        view2.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        backgroundView.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.top.equalTo(view1.snp.bottom).offset(10)
            make.centerX.equalTo(backgroundView)
            make.height.equalTo(232)
            make.width.equalTo(223)
        }
        
        let view3 = UIView()
        view3.makeRoundedCorners(radius: 30)
        view3.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        backgroundView.addSubview(view3)
        view3.snp.makeConstraints { (make) in
            make.top.equalTo(view2.snp.bottom).offset(10)
            make.centerX.equalTo(backgroundView)
            make.height.equalTo(232)
            make.width.equalTo(223)
        }
        
        let readNewsButton = UIButton(type: .system)
        backgroundView.addSubview(readNewsButton)
        readNewsButton.setTitle("Читать Новости", for: .normal)
        readNewsButton.setTitleColor(#colorLiteral(red: 0.4862745098, green: 0.4901960784, blue: 0.4941176471, alpha: 1), for: .normal)
        readNewsButton.titleLabel?.font = UIFont(name: "Times", size: 15)
        readNewsButton.makeRoundedCorners(radius: 30)
        readNewsButton.layer.borderWidth = 1
        readNewsButton.layer.borderColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        readNewsButton.snp.makeConstraints { (make) in
            make.top.equalTo(view3.snp.bottom).offset(50)
            make.centerX.equalTo(backgroundView)
            make.height.equalTo(50)
            make.width.equalTo(280)
            make.bottom.equalTo(backgroundView.snp.bottom).offset(-50)
        }
        readNewsButton.addTarget(self, action: #selector(readNewsButtonPressed), for: .touchUpInside)
    }
    
    @objc func readNewsButtonPressed(sender: UIButton!) {
        let customViewController = NewsFeedController()
        self.navigationController?.pushViewController(customViewController, animated: true)
    }
    
}

