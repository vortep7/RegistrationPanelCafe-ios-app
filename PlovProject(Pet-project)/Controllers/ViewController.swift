
import UIKit

class GeneralViewController: UIViewController {
    let presentedImageView = UIImageView()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        createdImageView(for: presentedImageView, top: -50, bottom: 50, leading: 50, trailing: -50, 
                         equalToFirst: self.view, equalToSecond: self.view)
        NetworkImageService.shared.downloadImage { image in
            self.presentedImageView.image = image
        }
        
        
    }
    
}


