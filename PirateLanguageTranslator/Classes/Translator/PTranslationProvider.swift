//
//  PRemoteTranslationProvider.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//

import UIKit

public protocol PTranslationProvider {
    func makeTranslation(text: String, success: (translatedText: String) -> Void , failure: (error: NSError) -> Void)
}
