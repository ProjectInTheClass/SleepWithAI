//
//  DayData.swift
//  UI_presentation_1
//
//  Created by WANKI KIM on 2020/02/01.
//  Copyright © 2020 임연지. All rights reserved.
//

import Foundation

struct DayData: Hashable {
    var day: String
    var sleepData: [SleepSoundUnit]
}

struct WholeData {
    var identifier = ["snoring","sleeptalking","tortion","breathing"]
    var secondsOfIdentifier = [1.0, 1.0, 1.0, 1.0]
}

var wholeData = WholeData()

