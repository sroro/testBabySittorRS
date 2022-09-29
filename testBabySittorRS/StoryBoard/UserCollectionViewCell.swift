//
//  UserCollectionViewCell.swift
//  testBabySittorRS
//
//  Created by Rodolphe Schnetzer on 29/09/2022.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var countryUser: UILabel!
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var reviewUser: UILabel!
    @IBOutlet weak var phoneUser: UILabel!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var emailUser: UILabel!
    @IBOutlet weak var avatarUser: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var imageFake = "https://img.freepik.com/free-psd/3d-illustration-person-with-rainbow-sunglasses_23-2149436196.jpg?w=996&t=st=1664406724~exp=1664407324~hmac=00666a5a68231ea106aa6b88400d7aa1ff45faeb80f262db6b23e47c401263e9"
    
    var userCell: UserInfos? {
        didSet{
            guard let firstName = userCell?.firstName else { return }
            guard let lastName = userCell?.lastName else { return }
            guard let imageUrl = URL(string: userCell?.defaultPictureURL ?? imageFake) else { return }
            //            guard let review = userCell?.averageReviewScore else { return }
            
            nameUser.text = ("\(firstName) \(lastName)")
            emailUser.text = userCell?.email
            phoneUser.text = userCell?.telephone
            avatarUser.sd_setImage(with: imageUrl)
            view.layer.cornerRadius = 20
            avatarUser.layer.cornerRadius = 20
            
            if  userCell?.averageReviewScore == nil {
                reviewUser.text = "No review"
            } else {
                guard let review = userCell?.averageReviewScore else { return }
                reviewUser.text = "\(review)"
            }
            
            if userCell?.locale == .fr {
                countryUser.text = "🇫🇷"
            } else {
                countryUser.text = "🏴󠁧󠁢󠁥󠁮󠁧󠁿"
            }
        }
        }
    }

