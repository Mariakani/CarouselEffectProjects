//
//  ViewController.swift
//  CarouselEffects
//
//  Created by Mariak Achuoth on 2019-03-01.
//  Copyright © 2019 Mariak Achuoth. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var interests = Interest.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.masksToBounds = true
        CollectionView.dataSource = self
    }
    //MARK-- Implement this functions
    @IBAction func editProfileDidTapped(_ sender: Any) {
         print("edit your profile")
    }
    @IBAction func discoverDidTapped(_ sender: Any) {
        print("discover your interest")
    }
}
//MARK-- Implement the uicollectionviewDelegate protocols
extension InterestViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "interestCell", for: indexPath) as! InterestCollectionViewCell
        let interest = interests[indexPath.item]
        cell .interest = interest
        //cell.backgroundColor = .purple
        return cell
    }
    
    
}
