//
//  ActivityView.swift
//  PDFArchiver
//
//  Created by Julian Kahnert on 23.11.19.
//  Copyright © 2019 Julian Kahnert. All rights reserved.
//

import SwiftUI
import UIKit

struct ActivityView: UIViewControllerRepresentable {

    var activityItems: [Any]
    var applicationActivities: [UIActivity]?

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {}
}
