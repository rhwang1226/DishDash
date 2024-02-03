# Welcome to DishDash
Dive into a sustainable marketplace designed for students to connect, share, and explore through food! Join DishDash and savor a greener & happier future.
First launched at **Carnegie Mellon's** Campus - helping achieve CMU's vision of working towards Goal #2 (to reach zero hunger) and Goal #12 (to ensure sustainable consumption patterns).

## 🛗 Elevator Pitch and a Formal Introduction
Imagine a student named Alex, navigating the tightrope of academics and part-time work, often ending the day too exhausted to think about meals. One night, after cooking more than needed, Alex stores the extra food in the fridge, hoping to eat it later. Yet, in the whirlwind of student life, Alex forgets, and the food spoils—wasted. This cycle of waste and regret is all too familiar.

Now let’s consider Jordan, living a few floors away who faces the dilemma of stretching a thin budget or settling for instant noodles again, unaware of the meal that went to waste in Alex's fridge. This isn't just about missed meals; it's about missed opportunities for connection in a community that should be sharing more than just spaces.

That's where our app steps in. Inspired by stories like Alex's and Jordan's, we created a platform that turns excess into access. Our app connects students, transforming forgotten fridge leftovers into nourishing meals for others. It's not just technology; it's a movement towards a campus where no meal is wasted, and no student is left hungry. Together, we're building a community, one shared meal at a time.

In line with Carnegie Mellon University's Sustainable Development Goals, particularly Goal #2 — to reach zero hunger, and Goal #12 — to ensure sustainable consumption and production patterns, our app directly supports CMU's vision. Provost and Honorary Food Drive Chair, Jim Garrett, emphasizes the importance of eradicating hunger and sharing resources right in our backyard. Our platform embodies this mission, making it a vital part of the campus-wide effort, including initiatives like the Campus Race to Zero Waste, to build a more sustainable and connected community.

Our app goes beyond simple transactions. Each meal shared comes in biodegradable packaging, reflecting our commitment to sustainability. And to foster trust, we've implemented a comprehensive review system where users rate their experiences out of 5 stars, ensuring transparency and reliability in every exchange.

## 🤩  Functionality and Pages
Our marketplace leverages the power of SwiftUI for a seamless and dynamic iOS application experience, Vapor as our server-side Swift framework to handle backend operations efficiently, and PostgreSQL for robust, reliable data storage. Another advantage of using PostgreSQL is its scalable nature, allowing us to grow our app easily if need be in the future.

## 🛠️  Architechture
Our project aims to follow the MVVM (Model-View-ViewModel) architechture to seamlessly bridge the gap between the client and server sides of the application.

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

## Acknowledgements and Application Status
This application was developed for the 2024 TartanHacks Hackathon at Carnegie Mellon University by Robin Hwang, Amol Mendonca, Naman Kabra, and Satvik Kapoor, all of who are undergraduates at the University of Michigan as of February 2024.

DishDash in currently in development, but we hope to announce an official release in the forseeable future!
