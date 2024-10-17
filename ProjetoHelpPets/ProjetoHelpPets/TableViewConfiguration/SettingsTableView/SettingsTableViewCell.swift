//
//  SettingsTableViewCell.swift
//  ProjetoFodaseDeSouza
//
//  Created by André Nestor on 17/09/24.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    static let identifier: String = "SettingsTableViewCell"
    
    lazy var SettingsCustomView: SettingsCustomViewCell = {
        let view = SettingsCustomViewCell()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.cellConfiguration()
        self.itemOnCellConstraintConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func cellConfiguration() {
        self.addSubview(SettingsCustomView)
        contentView.layer.cornerRadius = 15
    }
    
    private func itemOnCellConstraintConfiguration() {
        NSLayoutConstraint.activate([
            SettingsCustomView.topAnchor.constraint(equalTo: self.topAnchor),
            SettingsCustomView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            SettingsCustomView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            SettingsCustomView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
