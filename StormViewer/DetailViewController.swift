//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Carmine on 7/19/25.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!    
    var selectedImage: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        title = selectedImage
        if let selectedImageValue = selectedImage{
            imageView.image = UIImage(named: selectedImageValue)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
