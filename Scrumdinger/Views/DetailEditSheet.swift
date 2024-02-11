//
//  DetailEditSheet.swift
//  Scrumdinger
//
//  Created by Yuliya Charniak on 11/02/2024.
//

import SwiftUI

struct DetailEditSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool

    @State private var editingScrum: DailyScrum

    init(scrum: Binding<DailyScrum>, isPresentingEditView: Binding<Bool>) {
        self._scrum = scrum
        self._isPresentingEditView = isPresentingEditView
        self._editingScrum = .init(initialValue: scrum.wrappedValue)
    }

    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            scrum = editingScrum
                            isPresentingEditView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    DetailEditSheet(scrum: .constant(DailyScrum.sampleData[0]), isPresentingEditView: .constant(true))
}
