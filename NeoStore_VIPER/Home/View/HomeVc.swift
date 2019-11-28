//
//  HomeVc.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class HomeVc: UIViewController {
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    @IBOutlet weak var secondview : UIView!
    
    var arrImg1 = [UIImage(named: "slider_img1"), UIImage(named: "slider_img2"), UIImage(named: "slider_img3"),UIImage(named: "slider_img4")]
    
    var arrImg2 = [UIImage(named: "tableicon"), UIImage(named: "sofaicon"), UIImage(named: "cupboardicon"), UIImage(named: "chairsicon")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        secondCollectionView.dataSource =  self
        secondCollectionView.delegate = self
    
        let menu_Button = UIBarButtonItem(image: UIImage(named: "menu_icon"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(clickOnMenuBtn))
        self.navigationItem.leftBarButtonItem = menu_Button
}
    
    @objc func clickOnMenuBtn() {
        
        
          NotificationCenter.default.post(name: NSNotification.Name("openDrawer"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showHomeScreen), name: NSNotification.Name("showHomeScreen"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showCartScreen), name: NSNotification.Name("showCartScreen"), object: nil)
     
    }
    
    
    @objc func showHomeScreen() {
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVc") as! HomeVc
        
        self.navigationController?.pushViewController(vc, animated: true)
        
       NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "showHomeScreen"), object: nil)
    }
    
    @objc func showCartScreen() {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordView") as! ForgotPasswordView
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "showHomeScreen"), object: nil)
         NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "showCartScreen"), object: nil)
    }
}
    

extension HomeVc : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    // Mark : Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == firstCollectionView {
            return arrImg1.count
        } else {
            return arrImg2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == firstCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as! FirstCollectionViewCell
            cell.slidingImg.image = arrImg1[indexPath.item]
            cell.slidingImg.animationImages = arrImg1 as? [UIImage]
            cell.slidingImg.animationDuration = 5
            cell.slidingImg.startAnimating()
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as! SecondCollectionViewCell
            cell.slidingImg.image = arrImg2[indexPath.item]
            return cell
        } 
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.item {
        case 0:
            print("first")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductListView") as! ProductListView
            navigationController?.pushViewController(vc, animated: true)
            vc.catId = 1
        case 1:
            print("Second")
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductListView") as! ProductListView
            navigationController?.pushViewController(vc, animated: true)
            vc.catId = 2
        case 2 :
            print("third")
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductListView") as! ProductListView
            navigationController?.pushViewController(vc, animated: true)
            vc.catId = 3
            
        case 3 :
            print("fourth")
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductListView") as! ProductListView
            navigationController?.pushViewController(vc, animated: true)
            vc.catId = 4
        default:
            print("default")
        }
    }
}

extension HomeVc : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == firstCollectionView {
            let width = UIScreen.main.bounds.size.width
            let height = UIScreen.main.bounds.size.width 
            return CGSize(width: width, height: height)
        } else {
            let width =  secondview.bounds.width - 1
            let height = secondview.bounds.height - 10
        return CGSize(width: width / 2, height: height / 2)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}

