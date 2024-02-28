
import UIKit

class GeneralViewController: UIViewController {
    let presentedImageView = UIImageView()
    let image = UIImage(named: "OboiFirst")
    let autorizationButtonFirst = UIButton()
    let autorizationButtonSecond = UIButton()
    let labelFirst = UILabel()
    
    let imagePinkFonView = UIImageView()
    let imagePinkFon = UIImage(named: "pinkFon")
    let menuButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createdImageView(for: presentedImageView, top: 0, bottom: 0, leading: 0, trailing: 0,
                         equalToFirst: self.view, equalToSecond: self.view)
        presentedImageView.image = image
        
        //MARK:Create two buttons for logIn/SignIn
        createButton(for: autorizationButtonFirst, top: 760, bottom: -33, leading: 80, trailing: -80, equalToFirst: self.view, equalToSecond: self.view)
        customButton(button: autorizationButtonFirst, background: .cyan, titleFirst: "Зарегайся брат", radius: 20, alpha: 1, colorForNormalTitle: .brown, colorForTouchTitle: .cyan, titleSecond: "От души")
        
        createButton(for: autorizationButtonSecond, top: 680, bottom: -110, leading: 80, trailing: -80, equalToFirst: self.view, equalToSecond: self.view)
        customButton(button: autorizationButtonSecond, background: .purple, titleFirst: "Авторизуйся брат", radius: 20, alpha: 1,colorForNormalTitle: .brown, colorForTouchTitle: .cyan, titleSecond: "От души брат")
        
        createGeneralLabel(for: labelFirst, top: 50, bottom: -680, leading: 40, trailing: -20, equalToFirst: self.view, equalToSecond: self.view)
        labelFirst.text = "ПЛОВ ЦЕНТР/PLOV CENTER"
        
        customLabel(for: labelFirst, color: .black, font: .boldSystemFont(ofSize: 24))
        
        creatingTasksForButton()
        
        createdImageView(for: imagePinkFonView, top: 600, bottom: 0, leading: 50, trailing: -50, equalToFirst: self.view, equalToSecond: self.view)
        imagePinkFonView.alpha = 0.5
        imagePinkFonView.image = imagePinkFon
        
        view.insertSubview(imagePinkFonView, belowSubview: autorizationButtonFirst)
        view.insertSubview(imagePinkFonView, belowSubview: autorizationButtonSecond)
        
        createButton(for: menuButton, top: 150, bottom: -600, leading: 80, trailing: -80, equalToFirst: self.view, equalToSecond: self.view)
        customButton(button: menuButton, background: .gray, titleFirst: "Menu", radius: 32, alpha: 0.6, colorForNormalTitle: .red, colorForTouchTitle: .brown, titleSecond: "Puck")
        
        addTaskMenuButton()
    }
    
}


extension GeneralViewController {
    func creatingTasksForButton() {
        autorizationButtonFirst.addTarget(self, action: #selector(firstTask), for: .touchUpInside)
        autorizationButtonSecond.addTarget(self, action: #selector(secondTask), for: .touchUpInside)
    }
    
    @objc func firstTask() {
        let nextController = LogInViewController()
        navigationController?.pushViewController(nextController, animated: true)
    }
    
    @objc func secondTask() {
        let nextController = SignInViewController()
        navigationController?.pushViewController(nextController, animated: true)
    }
}

extension GeneralViewController {
    func addTaskMenuButton() {
        menuButton.addTarget(self, action: #selector(menuController), for: .touchUpInside)
    }
    
    @objc func menuController() {
        let nextController = MenuViewController()
        navigationController?.pushViewController(nextController, animated: true)
    }
}
