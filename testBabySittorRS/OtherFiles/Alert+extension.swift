//
//  Alert+extension.swift
//  testBabySittorRS
//
//  Created by Rodolphe Schnetzer on 29/09/2022.
//

import Foundation
import UIKit

extension UserViewController {
    func alertNoData(){
        let alert = UIAlertController(title: "}", message: "Sorry No data Yet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
        
    }
}
