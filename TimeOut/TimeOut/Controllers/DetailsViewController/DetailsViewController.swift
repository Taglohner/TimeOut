
import UIKit
import Hero
import ImageSlideshow


import UIKit

class DetailsViewController: UIViewController {
    
    var tableView = UITableView()
    let identifier = "cellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hero.isEnabled = true
        self.hero.modalAnimationType = .selectBy(presenting: .zoom, dismissing: .zoomOut)
        setupViews()
        setupTableView()
        setupNavigationbar()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    let imageSlideView: ImageSlideshow = {
        let view = ImageSlideshow()
        view.setImageInputs([
            
            ImageSource(image: UIImage(named: "mobile_picture_02202018_232948")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_233153")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_233519")!),
            ImageSource(image: UIImage(named: "mobile_picture_02202018_222018")!)
            
            ])
        
        view.backgroundColor = .white
        view.slideshowInterval = 3
        view.contentScaleMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews() {
        
        [imageSlideView, backButton].forEach { view.addSubview($0) }
        backButton.addTarget(self, action: #selector(backToPrevious), for: .touchUpInside)

        imageSlideView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, size: .init(width: 0, height: view.frame.height / 3))
        backButton.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 28, left: 20, bottom: 0, right: 0), size: .init(width: 50, height: 30))
    }

    @objc func backToPrevious() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Table view
    
    func setupTableView() {
//        tableView = UITableView(frame: view.frame, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.register(DetailsCell.self, forCellReuseIdentifier: identifier)
        tableView.scrollIndicatorInsets = .zero
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.contentInset = .zero
        tableView.bounces = false
        
        view.addSubview(tableView)
        tableView.anchor(top: imageSlideView.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    func setupNavigationbar() {
//        self.navigationController?.isNavigationBarHidden = false
    }
    


}

