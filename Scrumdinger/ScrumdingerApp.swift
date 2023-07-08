//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/07.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums){
                Task{
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch{
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
