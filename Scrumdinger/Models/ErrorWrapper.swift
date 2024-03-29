//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/09.
//

import Foundation

struct ErrorWrapper:Identifiable{
    let id:UUID
    let error:Error
    let guidance:String
    
    init(id: UUID=UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
