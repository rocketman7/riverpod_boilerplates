# riverpod_boilerplates

### This is a project that includes all boilerplate codes needed when developing a new app.

It will includes:  
- [ ] Basic folder structure using flutter_riverpod and its generator.  
- [ ] Onboarding Page
- [ ] Authentication Services
  - [ ] Email/Password
  - [ ] Google Signin
  - [ ] Apple Signin
- [ ] My Profile Page
- [ ] Firebase Setting
- [ ] AWS Setting
  - [ ] S3
  - [ ] Amplify
  - [ ] EC2
- [ ] Analytics
  - [ ] Google Analytics
  - [ ] Others


## Folder Structure

### The project structure will be "Feature-Based". 


- lib/
  - src/
    - features/
      - authentication/
        - data/
          - repositories/
          - models/
        - domain/
          - usecases/
        - presentation/
          - views/
            - login_page.dart
            - signup_page.dart
          - viewmodels/
            - authentication_viewmodel.dart
      - onboarding/
        - data/
          - repositories/
          - models/
        - domain/
          - usecases/
        - presentation/
          - views/
            - onboarding_page_1.dart
            - onboarding_page_2.dart
            ...
          - viewmodels/
            - onboarding_viewmodel.dart
      - profile/
        - data/
          - repositories/
          - models/
        - domain/
          - usecases/
        - presentation/
          - views/
            - profile_page.dart
          - viewmodels/
            - profile_viewmodel.dart
      - [other features]/
        - data/
        - domain/
        - presentation/
    - pages/
      - home/
        - views/
          - home_page.dart
        - viewmodels/
          - home_page_viewmodel.dart
      - [other general pages]/
        - views/
        - viewmodels/
    - shared/
      - widgets/
      - themes/
    - core/
      - services/
        - firebase_service.dart
        - api_service.dart
        - [other services]/
      - models/
      - utils/
    - main.dart
  - packages/
    - flutter_riverpod/
  - tests/

### In this structure:

**Features Folder**: Each feature (like authentication, onboarding, profile, etc.) has its own data, domain, and presentation layers. The presentation layer is further divided into views for UI components and viewmodels for state and logic.

**Pages Folder**: This is for more general or overarching pages of the app. Each page has its own views and viewmodels, separating UI from business logic.

**Shared Folder**: Contains reusable UI components (widgets) and design elements (themes).

**Core Folder**: Houses global services, shared models, and utility functions.

**Main.dart**: The entry point of the application.

