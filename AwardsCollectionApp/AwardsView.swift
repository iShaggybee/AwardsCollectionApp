//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    let awards = Aword.getAwards()

    var activeAwards: [Aword] {
        awards.filter { $0.awarded }
    }
    var body: some View {
        NavigationView {
            CustomGridView(columns: 2, items: activeAwards) { itemSize, award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
