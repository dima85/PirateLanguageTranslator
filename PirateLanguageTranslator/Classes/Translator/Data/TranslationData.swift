//
//  TranslationData.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//

import ObjectMapper

class TranslationResponseData: Mappable {
    var english: String?
    var pirate: String?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        english <- map["english"]
        pirate <- map["pirate"]
    }
}

class TranslationData: Mappable {
    
    var translation: TranslationResponseData?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        translation <- map["translation"]
    }
}
