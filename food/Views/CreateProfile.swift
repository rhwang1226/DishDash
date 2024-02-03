import SwiftUI

struct CreateProfile: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age: String = ""
    @State private var tartanID: String = ""
    @State private var navigateToHome = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                
                Text("Sign up!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(y: -25)
                
                Text("Create your profile on \nCarnegie Mellon's Campus")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(y: -40)
                    .multilineTextAlignment(.center)
                
                Group {
                    CustomTextField(placeholder: "First Name", text: $firstName)
                    CustomTextField(placeholder: "Last Name", text: $lastName)
                    CustomTextField(placeholder: "Age", text: $age, keyboardType: .numberPad)
                    CustomTextField(placeholder: "Tartan ID", text: $tartanID)
                }
                .padding(.horizontal, 15)
                
                Button(action: {
                    navigateToHome = true
                }) {
                    Text("Sign Up")
                        .bold()
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 15)
                }
                .padding(.top, 10)
                
                NavigationLink(destination: HomeView(), isActive: $navigateToHome) { EmptyView() }
                
                Spacer()
            }
            .padding(.horizontal, 15)
        }
    }
}

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .padding(.bottom, 10)
                
            Divider()
                .background(Color.black)
        }
    }
}

struct CreateProfile_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfile()
    }
}
