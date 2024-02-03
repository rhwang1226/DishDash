import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.white, Color.sand7], /// update gradient colors
    startPoint: .top, endPoint: .bottom)

struct AuthWithGradientView: View {
    @State private var navigateToHome = false // State to control navigation

    var body: some View {
        VStack {
            Spacer()
            
            // Your Logo
            Image("Icon")/// replace with your logo
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
            
            // Continue with Apple Button
            Button(
                action: {
                    // add action here
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
            
            Spacer()
                .frame(height: 15)
            
            // Continue with Google Button
            Button(
                action: {
                    // add action here
                },
                label: {
                    HStack{
                        Text("Sign Up")
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
            
            // Legal Disclaimer
            Text("By continuing, you agree to Basic's [Terms of Service](https://basics.com/terms-of-service) and [Privacy Policy](https://basics.com/privacypolicy) ")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.gray11)
                .padding(.top, 20)
                .font(.caption)
                .frame(width: 250)
        }
        .padding()
    }
}

struct AuthWithGradientView_Previews: PreviewProvider {
    static var previews: some View {
        AuthWithGradientView()
    }
}
