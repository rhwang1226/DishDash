import SwiftUI

struct RecommendedRecipeCardView: View {
    let image: UIImage
    let title: String
    let category: String // For the meal type like Breakfast
    let calories: String // For the calorie count
    let timeRequired: String // For the cooking/preparation time
    let servings: String // For the number of servings

    var body: some View {
        HStack {
            Image(uiImage: image)
                .resizable() // Ensure the image can be resized
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100) // Specify a frame for the image
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Clip to shape with rounded corners
                .padding(.trailing, 4)

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(category)
                        .font(.caption2)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6272217631, blue: 0.7377799153, alpha: 1)))
                    Spacer()

                    Image(uiImage: #imageLiteral(resourceName: "like")) // Ensure this is replaced with your image
                }
                Text(title)
                    .fontWeight(.medium)

                HStack(spacing: 2) {
                    ForEach(0..<5) { item in
                        Image(uiImage: #imageLiteral(resourceName: "star")) // Ensure this is replaced with your image
                            .renderingMode(.template)
                            .foregroundColor(Color("PrimaryColor"))
                    }

                    Text(calories)
                        .font(.caption)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding(.leading)
                }

                HStack {
                    Image(uiImage: #imageLiteral(resourceName: "time")) // Ensure this is replaced with your image
                    Text(timeRequired)
                        .font(.caption2)
                        .foregroundColor(Color("GrayColor"))

                    Image(uiImage: #imageLiteral(resourceName: "serving")) // Ensure this is replaced with your image
                        .padding(.leading)
                    Text(servings)
                        .font(.caption2)
                        .foregroundColor(Color("GrayColor"))

                }
            }
            .frame(maxWidth: .infinity)

        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.gray, lineWidth: 1) // Here you can customize the border color and width
        )
        .frame(maxWidth: .infinity)
        .cornerRadius(18.0)
    }
}
