//
//  RemoteTranslationProvider.swift
//  piratelanguage
//
//  Created by Admin on 12.06.16.
//  Copyright © 2016 onefit. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

var remoteProviderUrl = "http://isithackday.com/arrpi.php"

class RemoteJsonTranslationProvider: PTranslationProvider {
    func makeTranslation(text: String, success: (translatedText: String) -> Void , failure: (error: NSError) -> Void) {
        Alamofire.request(.GET, remoteProviderUrl, parameters: ["format": "json", "text": text])
            .responseObject  { (response: Response<TranslationData, NSError>) in
                
                if let error = response.result.error {
                    failure(error: error)
                }
                
                if let translatedText = response.result.value?.translation?.pirate {
                    success(translatedText: translatedText)
                }
                else {
                    success(translatedText: "")
                }
                
        }
    }
}
