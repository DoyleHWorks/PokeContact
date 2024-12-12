# 📱 PokeContact

The PokeContact app is a unique mobile app that utilizes images from Pokémon to help you manage your contacts.

## 📚 Tech Stacks

<div>
  <a href="https://developer.apple.com/xcode/" target="_blank">
    <img src="https://img.shields.io/badge/Xcode_16.1-147EFB?style=for-the-badge&logo=xcode&logoColor=white" alt="Xcode">
  </a>
  <a href="https://swift.org/" target="_blank">
    <img src="https://img.shields.io/badge/Swift_5-F05138?style=for-the-badge&logo=swift&logoColor=white" alt="Swift">
  </a>
  <br>
  <a href="https://developer.apple.com/documentation/uikit" target="_blank">
    <img src="https://img.shields.io/badge/UIKit-2396F3?style=for-the-badge&logo=uikit&logoColor=white" alt="UIKit">
  </a>
  <a href="https://github.com/SnapKit/SnapKit" target="_blank">
    <img src="https://img.shields.io/badge/SnapKit-00aeb9?style=for-the-badge&logoColor=white" alt="SnapKit">
  </a>
  <a href="https://github.com/devxoul/Then" target="_blank">
    <img src="https://img.shields.io/badge/Then-00aeb9?style=for-the-badge&logoColor=white" alt="Then">
  </a>
  <a href="https://github.com/Alamofire/Alamofire" target="_blank">
    <img src="https://img.shields.io/badge/AlamoFire-d6401b?style=for-the-badge&logoColor=white" alt="Then">
  </a>
  <br>
  <a href="https://www.gitkraken.com/" target="_blank">
    <img src="https://img.shields.io/badge/gitkraken-179287?style=for-the-badge&logo=gitkraken&logoColor=white" alt="GitKraken">
  </a>
  <a href="https://github.com/" target="_blank">
    <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <br>
</div>

## 📅 Project Scope

| Developer   |  Links                          | Project Timeline      |  
| --------    | --------------------------------- | ---------------------- |  
| DoyleHWorks | [GitHub](https://github.com/DoyleHWorks) <br> [Velog](https://velog.io/@doylehworks/posts?tag=ProjectPokeContact)  | 2024-12-09 <br> ~ 2024-12-12 | 

## 📂 Folder Organization
```
App/
├── AppDelegate.swift                  # Handles app lifecycle events and initialization.
├── Assets.xcassets                    # Contains app assets like images and colors.
├── Info.plist                         # Configuration file for app metadata.
├── LaunchScreen.storyboard            # Defines the app's launch screen UI.
└── SceneDelegate.swift                # Manages app scenes for multitasking (iOS 13+).

Coordinators/
├── AppCoordinator.swift               # Root coordinator responsible for app initialization.
├── MainCoordinator.swift              # Handles navigation within the main contact list view.
└── DetailCoordinator.swift            # Manages navigation for adding/editing contact details.

Models/
├── Contact+CoreDataClass.swift        # CoreData Contact entity definition.
├── Contact+CoreDataProperties.swift   # Properties and fetch requests for the Contact entity.
├── ContactRepository.swift            # Handles data operations like fetching, adding, and updating contacts.
├── PokemonFetcher.swift               # Fetches Pokémon data, including sprite URLs, from the PokeAPI.
├── PokemonResponse.swift              # Defines the Codable structure for PokeAPI responses.
└── UserData.xcdatamodeld              # CoreData schema definition for the app.

Protocols/
└── Coordinator.swift                  # Defines the Coordinator protocol for navigation management.

Utilities/
└── ImageLoader.swift                  # Utility for loading and caching images asynchronously.

ViewModels/
├── DetailViewModel.swift              # Prepares and processes data for the DetailViewController.
└── MainViewModel.swift                # Prepares and processes data for the MainViewController.

Views/
├── CustomViews/RoundImageViews.swift  # Custom UIView subclass for circular image views.
├── TableViewCells/ContactCell.swift   # TableView cell for displaying individual contacts.
├── DetailViewController.swift         # UI for adding or editing a contact.
└── MainViewController.swift           # UI for displaying the contact list.

```
## 🏗️ App Structure

|![image](https://github.com/user-attachments/assets/3e438518-0127-4709-81fc-f9620f5bb526)|
|---|

The app follows a Model-View-ViewModel-Coordinator (MVVM-C) architecture.
- **Model:** Represents the data layer, handling data fetching, storage, and manipulation.
- **View:** Handles the user interface, displaying information and responding to user input.
- **ViewModel:** Acts as a bridge between the View and Model, preparing data for presentation and handling user actions.
- **Coordinator:** Manages the flow of the app, coordinating the interactions between different screens and view controllers.

## 📐 Key Features

- **Add and Edit Contacts:**
  - A clean and user-friendly form for creating and updating contact information.
  - Fields for full name, phone number, and an avatar image.

- **Generate Pokémon Images:**
  - Fetches random Pokémon sprite images from the PokeAPI when creating or editing a contact.
  - Users can regenerate a random image by tapping the "Generate Avatar" button.

- **Manage Contact List:**
  - Displays a scrollable list of contacts with their names, phone numbers, and avatar images.
  - Uses a custom `ContactCell` with a clean layout for each contact.

- **Data Storage:**
  - Local data persistence using CoreData for contact storage.
  - Ensures data consistency and fast retrieval for offline use.

## ✨ Considerations

- **Sorted Contact List:**
  - Contacts are displayed in alphabetical order by their full names for easier browsing.

- **Error Handling:**
  - Alerts notify users of issues like empty fields, duplicate entries.
  - Detailed error messages for network issues, input validation failures, and data storage problems.

- **Easy to Delete:**
  - Swipe-to-delete functionality for intuitive contact management.
  - Deleted contacts are immediately removed from the list and CoreData.

- **UI Scaling:**
  - Built with SnapKit for dynamic UI scaling across different screen sizes.
  - Ensures a consistent and visually appealing experience on all devices.

- **Automatic Avatar Generation:**
  - Automatically assigns a random Pokémon avatar to new contacts, making contact management fun and engaging.
  - Users can manually change the avatar by tapping the "Generate Avatar" button.


## 📦 How to Install  
1. Clone this repository:  
   ```bash  
   git clone https://github.com/DoyleHWorks/PokeContact.git  
   ```  
