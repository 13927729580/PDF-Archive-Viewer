//
//  AppDelegate.swift
//  PDFArchiveViewer
//
//  Created by Julian Kahnert on 29.12.18.
//  Copyright © 2018 Julian Kahnert. All rights reserved.
//

import Sentry
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // start document service
        _ = DocumentService.archive
        _ = DocumentService.documentsQuery

        // Create a Sentry client and start crash handler
        do {
            Client.shared = try Client(dsn: "https://7adfcae85d8d4b2f946102571b2d4d6c@sentry.io/1299590")
            try Client.shared?.startCrashHandler()
            Client.shared?.enableAutomaticBreadcrumbTracking()
        } catch let error {
            print("\(error)")
        }

        self.window?.tintColor = UIColor(named: "TextColor")
        UISearchBar.appearance().tintColor = UIColor(named: "TextColor")
        UINavigationBar.appearance().tintColor = UIColor(named: "TextColor")

        return true
    }
}
