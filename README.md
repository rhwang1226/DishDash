# Welcome to DishDash
Dive into a sustainable marketplace designed for students to connect, share, and explore through food! Join DishDash and savor a greener & happier future.
First launched at **Carnegie Mellon's** Campus - helping achieve CMU's vision of working towards Goal #2 (to reach zero hunger) and Goal #12 (to ensure sustainable consumption patterns).

## 🤩  Functionality and Pages
Our marketplace leverages the power of SwiftUI for a seamless and dynamic iOS application experience, Vapor as our server-side Swift framework to handle backend operations efficiently, and PostgreSQL for robust, reliable data storage.

## 🚀  Project Setup

### Clone the GitHub Repository
```
git clone https://github.com/Satvikkapoor/DishDash cd DishDash
```

### Setup the PostgreSQL Database
```
DishDash
```

### Configure the Vapor backend
```
cd Server
cp .env.example .env
```

### Build and run the Vapor project
```
vapor build
vapor run
```

### Open the SwiftUI project
Open the .xcodeproj file in Xcode. Select a target device and run the project.

## 📈  Database Design

### `UserProfile` Model
The `UserProfile` entity is central to our database schema and is designed to store comprehensive user information. Below is a breakdown of its fields and their significance:

- **ID (`id`)**: A unique identifier for each user profile, generated automatically. This UUID ensures each user has a distinct reference, enhancing data management and security.
  
- **First Name (`first_name`)**: The user's given name. This field allows for personalization across the platform.
  
- **Last Name (`last_name`)**: The user's family name. Together with the first name, it helps in identifying users and personalizing user experiences.
  
- **Tartan ID (`tartan_id`)**: A unique identifier provided to users, possibly reflecting membership or identity within the community.
  
- **Date of Birth (`dob`)**: The user's date of birth. This information can be used for age verification and birthday acknowledgments.
  
- **Gender (`gender`)**: The user's gender identity. Our platform is inclusive, recognizing the importance of respecting user identities.

### Implementation Details
Fluent: Vapor's ORM for working with databases. It allows for the easy definition of models and their relationships, as well as query building.

Content Protocol: Allows UserProfile to be returned in routes directly, supporting JSON data formats seamlessly.

## 🖥️  Usage
After launching the iOS app, you'll be prompted to create a new account or log in. Once authenticated, you can explore the marketplace, manage your account etc.

