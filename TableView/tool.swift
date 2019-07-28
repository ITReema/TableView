//
//  tool.swift
//  TableView
//
//  Created by mac_os on 25/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import Foundation
import UIKit

class tool {
    var name: String?
    var image: UIImage?
    var price: Double?
    var description: String?
    
    
    init(name: String, image: UIImage, price: Double, description: String)
    {
        
        self.name = name
        self.image = image
        self.price = price
        self.description = description
    }
    
    class func fetchTools() -> [tool]{
        var tools = [tool]()
        
        // 1
        
        let tool1 = tool(name: "خبازة هوست", image: UIImage(named: "0" )!,price: 164.85, description: "سخان بيتزا والخبز صالح لاطباق متنوعة")
        tools.append(tool1)
        
        return tools
    }
}
