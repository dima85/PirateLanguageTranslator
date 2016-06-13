//
//  PirateLanguageTranslator.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//
import UIKit

class PirateLanguageTranslator: PTranslator {
    
    let translator: PTranslationProvider!
    
    init() {
        self.translator = RemoteJsonTranslationProvider()
    }
    
    init(translator: PTranslationProvider) {
        self.translator = translator
    }
    
    func translate(text: String, success: (translated: String) -> Void, failure: (error: NSError) -> Void) {
        translator.makeTranslation(text, success: success, failure: failure)
    }
}
