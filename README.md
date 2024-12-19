# Home Service App

**Home Service App** is a Flutter-based application that allows users to find service providers (plumbers, electricians, and carpenters) based on their preferences. The app allows filtering by provider type (Individual or Company) and profession, and displays detailed information about the selected provider.

---

## Features
1. **Search for Providers:**
   - Filter providers by type (`Individual`, `Company`, or `Any`).
   - Select profession (`Plumber`, `Electrician`, `Carpenter`).

2. **Provider Details:**
   - Displays name, contact information, and a brief description of the selected provider.

3. **Simple User Interface:**
   - Uses `RadioListTile` for type selection.
   - Dropdown menus for selecting profession and provider.
   - Clean and intuitive layout with proper use of Flutter widgets.

---

## Folder Structure
The app code is organized into the following files within the `lib` folder:

### 1. **`main.dart`**
- **Purpose**: The main entry point of the application.
- **Description**:
  - Imports the required Flutter material package and the `home.dart` file.
  - Initializes the `MyApp` class, which serves as the root widget of the application.
  - Sets up a `MaterialApp` widget with `Home` as the main screen.

### 2. **`home.dart`**
- **Purpose**: Implements the main screen of the app, allowing users to search for service providers.
- **Description**:
  - Uses `StatefulWidget` to dynamically update the UI based on user input.
  - Includes:
    - **Radio Buttons**: Allow users to filter by provider type (Individual, Company, Any).
    - **Dropdown Menus**: Let users choose a profession and a specific provider.
    - **Card Widget**: Displays detailed information about the selected provider.
  - Contains filtering logic for the providers based on the selected type and profession.

### 3. **`service_provider.dart`**
- **Purpose**: Defines the data model and a list of service providers.
- **Description**:
  - **`ServiceProvider` Class**: A blueprint for creating provider objects with attributes such as name, profession, description, phone number, and type (`isIndividual`).
  - **`providers` List**: A predefined list of 10 service providers (5 individuals and 5 companies) with diverse professions.

---

## How to Run the App
1. Clone the repository:
   ```bash
   git clone https://github.com/ZainabMaatouk20/home_service_app.git
   cd home_service_app

