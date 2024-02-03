import SwiftUI

struct AuthWithGradientView: View {
    @State private var navigateToHome = false
    @State private var navigateToCreateProfile = false

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Image("Icon") // Replace with your logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .frame(height: 40)
               
                Text("DishDash")
                    .font(.largeTitle) // Customize font size/style as needed
                    .foregroundColor(Color.black) // Customize color as needed
                
                // Subtitle
                Text("Sign in to continue!")
                    .font(.title3) // Customize font size/style as needed
                    .foregroundColor(Color.gray) // Customize color as needed

                Spacer()
                
                // Log In Button
                Button("Log In") {
                    navigateToHome = true
                }
                .bold()
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(Color.gray3) // Make the background gray
                .cornerRadius(10) // Make the background rounded
                .overlay( // Apply a rounded border
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray6, lineWidth: 1)
                )
                .padding(.bottom, 15)

                // Sign Up Button
                Button("Sign Up") {
                    navigateToCreateProfile = true
                }
                .bold()
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(Color.gray3) // Make the background gray
                .cornerRadius(10) // Make the background rounded
                .overlay( // Apply a rounded border
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray6, lineWidth: 1)
                )
                
                // Legal Disclaimer
                Text("By continuing, you agree to Basic's [Terms of Service](https://basics.com/terms-of-service) and [Privacy Policy](https://basics.com/privacypolicy)")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .padding(.top, 20)
                    .font(.caption)
                    .frame(width: 250)

                Spacer()
                
                NavigationLink(destination: HomeView(), isActive: $navigateToHome) { EmptyView() }
                NavigationLink(destination: CreateProfile(), isActive: $navigateToCreateProfile) { EmptyView() }
            }
            .padding()
        }
    }
}

struct AuthWithGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AuthWithGradientView()
    }
}
