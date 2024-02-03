import SwiftUI
import MapKit

struct HomeView: View {
    @State private var search: String = ""
    @State private var showMap = false // State to control map view presentation

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 16) {
                HomeNavBarView()
                
                Button(action: {
                    // Action to show map
                    showMap = true
                }) {
                    HStack {
                        Text("📍North Campus, Ann Arbor")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "map")
                    }
                }
                .padding(.vertical, 5)
                .sheet(isPresented: $showMap) {
                    // Present the map view as a sheet
                    MapView(showMap: $showMap)
                }

                
                Text("Search for your favorite \ncampus chef")
                    .font(.title)
                    .fontWeight(.bold)
                
                SearchAndFilterView(search: $search)
                
//                FreshRecipesView()
                
                SectionTitleView(title: "Recommended")
                
                RecommendedRecipeCardView(image: UIImage(named: "reco_1") ?? UIImage(), title: "Satvik's Cupcake", category: "2260 Bursley Hall", calories: "4 reviews!", timeRequired: "2 mins away", servings: "Ready Now!")
                RecommendedRecipeCardView(image: UIImage(named: "reco_2") ?? UIImage(), title: "Naman's Salmon", category: "1106 Cross House", calories: "2 reviews!", timeRequired: "5 min away", servings: "Ready in 10 mins!")
                RecommendedRecipeCardView(image: UIImage(named: "reco_3") ?? UIImage(), title: "Robin's Chicken Buns", category: "Room 2250, Duderstadt Center", calories: "7 reviews!", timeRequired: "0 mins away", servings: "Ready in 4 mins!")
            }
            .padding()
        }
    }
}

struct MapView: View {
    @Binding var showMap: Bool // Use a binding to control the presentation state
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 42.2908, longitude: -83.7165), // North Campus, Ann Arbor coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Map Location")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Dismiss") {
                            showMap = false // Dismiss the map view
                        }
                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
