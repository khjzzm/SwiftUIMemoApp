//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by hyunjin kim on 4/4/24.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
