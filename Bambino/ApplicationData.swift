//
//  ApplicationData.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class ApplicationData: NSObject {
    
    var mama: Mama
    
    override init() {
        self.mama = Mama()
    }
}
