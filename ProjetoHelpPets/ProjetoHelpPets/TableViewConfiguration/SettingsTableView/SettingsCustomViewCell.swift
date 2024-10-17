import UIKit

class SettingsCustomViewCell: UIView {
    
    lazy var cellTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.text = "Júnior Alfredo Gomes"
        view.font = UIFont(name: "Futura", size: 16)
        view.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        buildLayout()
    }
    
    func buildLayout() {
        self.addSubview(cellTitle)
        
        NSLayoutConstraint.activate([
            cellTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 13),
            cellTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
    
    func configureComponentData(text: String) {
        cellTitle.text = text
    }


}
