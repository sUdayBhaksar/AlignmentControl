//
//  AlingmentView.swift
//  AlignmentControl
//
//  Created by workmachine on 16/04/2019.
//

import UIKit

class AlingmentView: UIView {

	var alignmentModes: [AlignmentMode] = [.Left, .Center, .Right, .Top, .Middle, .Bottom]

	override func awakeFromNib() {
		super.awakeFromNib()

		setupItems()
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	fileprivate func setupItems() {

		for (index, alignmentMode) in alignmentModes.enumerated() {

			let fullWidth: CGFloat = frame.width / CGFloat(alignmentModes.count)
			let fullHeight: CGFloat = frame.height * 0.6

			let padding: CGFloat = (frame.width * 0.2) / CGFloat(alignmentModes.count)
			let offset: CGFloat = (fullWidth * CGFloat(index)) + (padding / 2)
			let width: CGFloat = (fullWidth - padding)
			let height: CGFloat = fullHeight

			let item = AlingmentItemView(alignmentMode)
			item.frame.origin = CGPoint(x: offset, y: 10)
			item.frame.size = CGSize(width: width, height: height)
			item.backgroundColor = .white
			addSubview(item)
		}
	}
}
