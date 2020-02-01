//
//  CustomCell.swift
//  UI_presentation_1
//
//  Created by WANKI KIM on 2020/01/21.
//  Copyright © 2020 임연지. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        self.subviews.forEach { view in
            if view.tag == 99 {
                view.removeFromSuperview()
            }
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            // Configure the view for the selected state
    }
    func custominit(text: String, accessoryText:String){
        self.titleLabel.text = text
        self.titleLabel.textColor = UIColor.white
        //self.contentView.backgroundColor = UIColor.darkGray
    }
    
    var startingX = 16
    
    func creatingData(widthOfData: Double, dataViewColor: UIColor? ){
        let realWidth = widthOfData * 10
        let dataView: UIView = UIView(frame: CGRect(x: startingX, y: 60, width: Int(realWidth), height: 40))
        dataView.tag = 99
        dataView.backgroundColor = dataViewColor
        self.addSubview(dataView)
        startingX += Int(realWidth)
    }
    func buildUI(data: [SleepSoundUnit]){
        var allSecond = Int()
        for i in 0..<data.count {
            allSecond += (data[i].endedSecond - data[i].startedSecond)
        }
        for i in 0..<data.count {
            if data[i].identifier == "snoring" {
                creatingData(widthOfData: 35 * ((data[i].endedSecond - data[i].startedSecond) / allSecond) , dataViewColor: .red)
                
            } else if data[i].identifier == "sleeptalking" {
                creatingData(widthOfData: 35 * ((data[i].endedSecond - data[i].startedSecond) / allSecond) , dataViewColor: .orange)
            } else if data[i].identifier == "tortion" {
                creatingData(widthOfData: 35 * ((data[i].endedSecond - data[i].startedSecond) / allSecond) , dataViewColor: .yellow)
            } else if data[i].identifier == "breathing" {
                creatingData(widthOfData: 35 * ((data[i].endedSecond - data[i].startedSecond) / allSecond) , dataViewColor: .blue)
            } else{
                print("error")
            }
        }
        creatingData(widthOfData: 0.1, dataViewColor: .black)
        //끝 구별하려고 검은색 넣음
        
        startingX = 16
        
    }

    
    
}
