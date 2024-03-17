//
//  @Extemtions.swift
//  GeoMetryReader_SrcollViewLabratoy
//
//  Created by Omid Shojaeian Zanjani on 17/03/24.
//

import Foundation
import SwiftUI
import UIKit


private struct SafeAreaInsetsKey: EnvironmentKey {
    static var defaultValue: EdgeInsets {
        guard let windowScene = UIApplication.shared.connectedScenes
                .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene else {
            return EdgeInsets()
        }
        let uiSafeAreaInsets = windowScene.windows.first { $0.isKeyWindow }?.safeAreaInsets ?? .zero
        return EdgeInsets(top: CGFloat(uiSafeAreaInsets.top),
                          leading: CGFloat(uiSafeAreaInsets.left),
                          bottom: CGFloat(uiSafeAreaInsets.bottom),
                          trailing: CGFloat(uiSafeAreaInsets.right))
    }
}


extension EnvironmentValues {
    
    var safeAreaInsets: EdgeInsets {
        self[SafeAreaInsetsKey.self]
    }
}

