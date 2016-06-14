//
//  PirateLanguageTranslator.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//
import UIKit

public class PirateLanguageTranslator: PTranslator {
    
    let translator: PTranslationProvider!
    
    public init() {
        self.translator = RemoteJsonTranslationProvider()
    }
    
    public init(translator: PTranslationProvider) {
        self.translator = translator
    }
    
    public func translate(text: String, success: (translated: String) -> Void, failure: (error: NSError) -> Void) {
        translator.makeTranslation(text, success: success, failure: failure)
    }
}
