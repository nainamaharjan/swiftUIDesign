//
//  SizeMesurementViewModifier.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct SizeMesurementViewModifier<Key: PreferenceKey>: ViewModifier where Key.Value == CGFloat {
    let path: KeyPath<CGSize, CGFloat>
    let key: Key.Type

    func body(content: Content) -> some View {
        content
            .background {
                GeometryReader { geo in
                    Color.clear.preference(key: key, value: geo.size[keyPath: path])
                }
            }
    }
}
