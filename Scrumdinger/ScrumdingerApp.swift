//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/07.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
