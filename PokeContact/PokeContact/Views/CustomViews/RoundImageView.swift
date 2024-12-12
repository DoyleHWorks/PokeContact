//
//  RoundImageView.swift
//  PokeContact
//
//  Created by t0000-m0112 on 2024-12-10.
//

import UIKit

/// Custom subclass for UIImageView.
/// It applies corner radius and border attributes to make a circle border.
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = bounds.height / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemGray4.cgColor
    }
}
