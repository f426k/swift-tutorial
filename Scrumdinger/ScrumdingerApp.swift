//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/07.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
