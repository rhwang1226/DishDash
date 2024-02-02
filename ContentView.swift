import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.white, Color.sand7], /// update gradient colors
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State private var showMapView = false
    @State private var showSignUpView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            // Your Logo
            Image("logo")/// replace with your logo
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
                .frame(height: 40)
            Text("Welcome to the world's best \nself-checkout platform")
                .multilineTextAlignment(.center)
                .font(.title3)

            Spacer()
            
            // Continue with Apple Button
            Button(
                action: {
                    self.showMapView = true
                },
                label: {
                    HStack{
                        
                        Text("Log In")
                            .bold()
                            .foregroundColor(Color.black)
                    }
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(Color.gray3) /// make the background gray
                    .cornerRadius(10) /// make the background rounded
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray6, lineWidth: 1)
                    )
                })
            .sheet(isPresented: $showMapView) {
                // Present the MapView
                MapView()
            }

            
            Spacer()
                .frame(height: 15)
            
            // Continue with Google Button
            Button(
                action: {
                    // Trigger the showing of the SignUpView
                    self.showSignUpView = true
                },
                label: {
                    HStack {
                        Text("Sign Up")
                            .bold()
                            .foregroundColor(Color.black)
                    }
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(Color.gray.opacity(0.3)) // Assuming gray3 is a lighter shade of gray
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.6), lineWidth: 1) // Assuming gray6 is a darker shade of gray
                    )
                }
            )
            .fullScreenCover(isPresented: $showSignUpView) {
                // Present the SignUpView as a full screen cover
                SignUpView()
            }
            
            // Legal Disclaimer
            Text("By continuing, you agree to Basic's [Terms of Service](https://basics.com/terms-of-service) and [Privacy Policy](https://basics.com/privacypolicy) ")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.gray11)
                .tint(Color.gray12)
                .padding(.top, 20)
                .font(.caption)
                .frame(width: 250)
        }
        .padding()
        .background(backgroundGradient)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
