//
//  ViewController.swift
//  testBabySittorRS
//
//  Created by Rodolphe Schnetzer on 29/09/2022.
//

import UIKit
import SDWebImage

class UserViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: "UserCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "userCell")
        collectionView.delegate = self
        getDataUsers()
    }
    
  var user = UserNetwork()
  var arrayDataUsers = [UserInfos]()
  var numberOfUsers = [Int]()
    
    func getDataUsers() {
        user.getUser { [weak self] resultat in
            DispatchQueue.main.async {
            switch resultat{
            case.failure(_):
                self?.alertNoData()
            case.success(let result):
                
                    for  data in result.data {
                        self?.arrayDataUsers.append(data)
                        self?.numberOfUsers.append(data.id)
                        self?.collectionView.reloadData()
                    }
                }
                
            }
            
        }
        
    }


}

extension UserViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfUsers.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userCell", for: indexPath) as? UserCollectionViewCell else { return UICollectionViewCell()}
       
        cell.userCell = arrayDataUsers[indexPath.row]
        return cell
    }
    
    
    
}

