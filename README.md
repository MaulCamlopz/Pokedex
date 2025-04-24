# 🎮 Pokémon List App with SwiftData

![Swift](https://img.shields.io/badge/Swift-5.9+-orange?logo=swift)
![iOS](https://img.shields.io/badge/iOS-17.0+-blue?logo=apple)
![Xcode](https://img.shields.io/badge/Xcode-15+-blue?logo=xcode)

<p align="center">
  <img src="https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png" width="200" alt="PokeAPI Logo">
</p>

## 📱 App Overview

This iOS application displays a list of Pokémon stored in a local database using SwiftData. If no data exists, it can fetch Pokémon from the public PokeAPI.

## ⭐️ Features

- **Clean modern UI** with SwiftUI
- **Local Storage:** Uses SwiftData to persist Pokémon data
- **API Integration:** Fetches Pokémon data from PokeAPI when local database is empty
- **Automatic Data Loading:** Checks for existing data on launch and fetches if needed

## 📦 API Integration

```swift
let apiEndpoint = "https://pokeapi.co/api/v2/pokemon/?limit=151&offset=0"
```

## 🛠️ Requirements

- iOS 17.0+ (SwiftData minimum requirement)
- Xcode 15+
- Swift 5.9+

## Implementation Notes

1. The app first checks the local SwiftData database for existing Pokémon
2. If no data exists, it will:
   - Show an option to fetch data
   - Download Pokémon from the API when requested
   - Store results in SwiftData for future use
3. The app displays the Pokémon names in a list view

## Setup

1. Clone or download the project
2. Open in Xcode 15+
3. Build and run on iOS 17+ simulator or device

## Usage

Simply launch the app - it will automatically handle:

- Checking for existing data
- Providing option to fetch if empty
- Displaying the Pokémon list

