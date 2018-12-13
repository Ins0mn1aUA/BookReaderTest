//
//  StoryboardFolioReaderContrainer.swift
//  BookReaderTest
//
//  Created by Grisha Stetsenko on 12/12/18.
//  Copyright © 2018 Grisha Stetsenko. All rights reserved.
//

import UIKit
import FolioReaderKit

class StoryboardFolioReaderContrainer: FolioReaderContainer {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let config = FolioReaderConfig()
        config.scrollDirection = .horizontalWithVerticalContent
        
        guard let bookPath = Bundle.main.path(forResource: "The Silver Chair", ofType: "epub") else { return }
        setupConfig(config, epubPath: bookPath)
    }
}
