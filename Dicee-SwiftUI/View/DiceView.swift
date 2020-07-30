//
//  DiceView.swift
//  Dicee-SwiftUI
//
//  Created by Artem Tkachuk on 7/29/20.
//  Copyright © 2020 Artem Tkachuk. All rights reserved.
//

import SwiftUI

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(n: 2)
            .previewLayout(.sizeThatFits)
    }
}
