//
//  PTranslator.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//

import UIKit

protocol PTranslator {
    func translate(text: String, success: (translated: String) -> Void, failure: (error: NSError) -> Void)
}
