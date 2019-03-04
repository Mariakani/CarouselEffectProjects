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
    var interests = Interest.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
    }

}

extension InterestViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "interestCell", for: indexPath) as! InterestCollectionViewCell
        let interest = interests[indexPath.item]
        cell .interest = interest
        return cell
    }
    
    
}
