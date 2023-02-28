import SwiftUI

struct Skill: Identifiable, Hashable {
    var id = UUID()
    var name: String
}

struct ContentView: View {
    @State private var selectedSkills = Set<Skill>()
    private let skills: [Skill] = [
        .init(name: "iOS"),
        .init(name: "Android"),
        .init(name: "Web")
    ]

    var body: some View {
        NavigationView {
            VStack {
                List(skills, id: \.self, selection: $selectedSkills) {
                    Text($0.name)
                }
                .navigationTitle("Oceans")
                .toolbar { EditButton() }

                Button {
                    print(selectedSkills)
                } label: {
                    Text("Tap!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
