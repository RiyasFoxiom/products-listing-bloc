# Product List E-Commerce Application

A modern Flutter e-commerce application showcasing clean architecture principles, advanced state management with BLoC, and robust API integration. Built with FakeStore API for product listings.

## 📱 Features

### Core Features
- ✅ **Product Listing** - Paginated product grid with infinite scroll
- ✅ **Product Search** - Real-time search with debouncing (500ms)
- ✅ **Price Sorting** - Sort by price (Low to High / High to Low)
- ✅ **Single Product View** - Detailed product information with ratings
- ✅ **Responsive Design** - Modern 2-column grid layout with shadows

### Advanced Features
- ✅ **Pagination** - Load 10 items per page with auto-trigger on scroll
- ✅ **Debouncing** - Smart search with 500ms debounce duration
- ✅ **Error Handling** - Comprehensive error states with retry mechanism
- ✅ **Loading States** - Initial load and pagination load indicators
- ✅ **Caching** - Smart product caching to reduce API calls
- ⚠️ **Local Storage** - Planned with Hive (compatibility issues noted below)

---

## 🏗️ Architecture Overview

This project implements **Clean Architecture** with **BLoC** state management, ensuring scalability, testability, and maintainability.

### Architecture Layers

```
lib/
├── main.dart                          # App entry point with BLoC providers
├── core/                              # Core utilities & configuration
│   ├── dio_client.dart               # Singleton HTTP client setup
│   └── urls.dart                     # API endpoints & base URLs
├── data/                              # Data layer (API & Models)
│   ├── models/
│   │   └── products/
│   │       ├── products_model.dart   # Product data model (JSON serializable)
│   │       └── products_model.g.dart # Generated JSON code
│   └── repositories/
│       ├── products/
│       │   └── products_repo_impl.dart # Concrete repository implementation
│       └── single_product/
│           └── single_product_repo_impl.dart
├── domain/                            # Domain layer (Business Logic)
│   ├── repositories/
│   │   ├── products/
│   │   │   └── products_repo.dart    # Abstract repository interface
│   │   └── single_product/
│   │       └── single_products_repo.dart
│   └── core/
│       ├── di/
│       │   ├── injectable.dart       # Dependency injection setup
│       │   └── injectable.config.dart # Generated DI config
│       └── failers/
│           ├── failers.dart          # Error types (Freezed)
│           └── failers.freezed.dart
└── presentation/                      # Presentation layer (UI & State Management)
    ├── bloc/
    │   ├── produts/                  # Products listing BLoC
    │   │   ├── produts_bloc.dart    # BLoC logic with scroll handling
    │   │   ├── produts_event.dart   # Events (GetProducts, LoadMore)
    │   │   └── produts_state.dart   # State (products, pagination, loading)
    │   ├── search/                   # Search & filter BLoC
    │   │   ├── search_bloc.dart     # Search with debounce & sorting
    │   │   ├── search_event.dart    # Events (SearchProducts, SortBy)
    │   │   └── search_state.dart    # State (results, query, sort option)
    │   └── single_product/           # Single product detail BLoC
    │       ├── single_product_bloc.dart
    │       ├── single_product_event.dart
    │       └── single_product_state.dart
    ├── view/
    │   ├── products/
    │   │   └── products_view.dart   # Paginated product grid (stateless)
    │   ├── search/
    │   │   └── search_view.dart     # Search with sorting (stateless)
    │   └── single_product/
    │       └── single_product_view.dart # Product detail page
    └── widgets/
        └── app_cached_img.dart       # Reusable image widget
```

---

## 🔄 Data Flow Architecture

### Clean Architecture Pattern
```
┌─────────────────────────────────────────────────────────┐
│                  PRESENTATION LAYER                      │
│  ┌──────────────────────────────────────────────────┐  │
│  │ Views (Stateless Widgets) & BLoC                │  │
│  │ - ProductsView, SearchView, SingleProductView   │  │
│  │ - ProdutsBloc, SearchBloc, SingleProductBloc    │  │
│  └──────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────┘
                           ↕
┌─────────────────────────────────────────────────────────┐
│                    DOMAIN LAYER                         │
│  ┌──────────────────────────────────────────────────┐  │
│  │ Abstract Repositories & Business Logic           │  │
│  │ - GetProductsRepo (interface)                    │  │
│  │ - MainFailers (Error handling)                   │  │
│  │ - Dependency Injection setup                     │  │
│  └──────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────┘
                           ↕
┌─────────────────────────────────────────────────────────┐
│                     DATA LAYER                          │
│  ┌──────────────────────────────────────────────────┐  │
│  │ Repository Implementations & API Calls           │  │
│  │ - ProductsRepoImpl (HTTP calls via Dio)          │  │
│  │ - ProductsResponse (JSON models)                 │  │
│  │ - DioClient (HTTP setup)                         │  │
│  └──────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────┘
                           ↕
┌─────────────────────────────────────────────────────────┐
│                  EXTERNAL SERVICES                      │
│  FakeStore API (https://fakestoreapi.com/products)     │
└─────────────────────────────────────────────────────────┘
```

---

## 🎛️ State Management (BLoC Pattern)

### BLoC Architecture
Each BLoC manages specific features using immutable events and states:

```
Event (User Action) → BLoC Logic → State (UI Update)
```

### Implemented BLoCs

#### 1. **ProdutsBloc** - Product Listing & Pagination
```dart
Events:
  • GetProducts()  → Fetch first 10 products
  • LoadMore()     → Fetch next page on scroll

State:
  • products: List<ProductsResponse>     // All loaded products
  • currentPage: int                     // Pagination tracking
  • isLoading: bool                      // Initial load indicator
  • isLoadingMore: bool                  // Pagination load indicator
  • isError: bool                        // Error state
  • errorMessage: String?                // Error description
```

**URL Format**: `?limit=10&page=1`, `?limit=10&page=2`, etc.

#### 2. **SearchBloc** - Search & Price Sorting
```dart
Events:
  • InitializeProducts()                 // Load all products on startup
  • SearchProducts(query, sortBy)        // Search with debounce (500ms)
  • SortBy(sortOption)                   // Change sorting
  • ClearSearch()                        // Reset search

State:
  • results: List<ProductsResponse>      // Filtered products
  • searchQuery: String                  // Current search term
  • sortOption: String                   // low_to_high / high_to_low
  • isLoading, isError, errorMessage
```

**Search Features**:
- Searches across: title, description, category
- Debounce Duration: 500ms (reduces API calls while typing)
- Caches products in-memory for fast re-sorting

#### 3. **SingleProductBloc** - Product Details
```dart
Events:
  • GetSigleProduct(id)                  // Fetch product by ID

State:
  • product: ProductsResponse?           // Product details
  • isLoading, isError, errorMessage
```

---

## 📦 Dependencies & Technologies

### Core Dependencies
| Package | Version | Purpose |
|---------|---------|---------|
| `flutter_bloc` | ^9.1.1 | State management |
| `freezed_annotation` | ^3.1.0 | Immutable model generation |
| `dio` | ^5.9.0 | HTTP client |
| `dartz` | ^0.10.1 | Either<Failure, Success> pattern |
| `injectable` | ^2.7.0 | Dependency injection |
| `get_it` | ^9.1.1 | Service locator |
| `json_annotation` | ^4.9.0 | JSON serialization |
| `cached_network_image` | ^3.4.1 | Image caching |

### Dev Dependencies
| Package | Purpose |
|---------|---------|
| `build_runner` | Code generation |
| `freezed` | Immutable classes |
| `json_serializable` | JSON code generation |
| `injectable_generator` | DI setup generation |

---

## 🌐 API Integration

### Endpoint Configuration

**Base URL**: `https://fakestoreapi.com`

**Endpoints Used**:
```
GET /products                              # List all products
GET /products?limit=10&page=1             # Paginated products
GET /products/:id                          # Single product details
```

### HTTP Client Setup (Dio)
Located in `lib/core/dio_client.dart`:

```dart
• Singleton pattern for HTTP client
• Request/Response logging interceptors
• 30-second timeout configuration
• Automatic JSON parsing
```

### Response Models (JSON Serializable)

```dart
ProductsResponse:
  • id: int
  • title: String
  • price: double
  • image: String
  • category: String
  • description: String
  • rating: Rating
    - rate: double
    - count: int
```

---

## ⚡ Advanced Features Explained

### 1. Pagination System
```
User scrolls to bottom
         ↓
ScrollController detects position
         ↓
ProdutsEvent.LoadMore triggered
         ↓
BLoC fetches next page (?limit=10&page=N)
         ↓
Shows CircularProgressIndicator at bottom
         ↓
New products appended to list
         ↓
currentPage incremented
```

**Key Features**:
- 10 items per page
- Auto-triggers on scroll to bottom
- Shows loading indicator for pagination
- Separate loading state for UX clarity

### 2. Search with Debouncing
```
User types 'shirt'
    ↓ (500ms debounce waits)
's' → waits
'h' → resets timer
'i' → resets timer
'r' → resets timer
't' → resets timer
(500ms passes with no input)
    ↓
API call executes
    ↓
Results filtered in-memory
    ↓
UI updates with results
```

**Benefits**:
- Reduces unnecessary API calls
- Prevents server overload
- Better UX while typing
- Configurable duration (500ms)

### 3. Error Handling (Either Pattern)
```dart
Using dartz Either<MainFailers, Success>:

result.fold(
  (failure) => handleError(failure),  // Failure case
  (success) => handleSuccess(success) // Success case
)

Error Types:
• ClientFailure    → Bad request, validation
• ServerFailure    → 5xx errors
• NetworkFailure   → Connection issues
```

### 4. Dependency Injection (GetIt + Injectable)
```dart
setup() in main.dart:
  • Automatically injects dependencies
  • Singleton pattern for repositories
  • Factory pattern for BLoCs
  • Lazy initialization support
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK: ^3.9.2
- Dart SDK: included with Flutter

### Installation & Setup

```bash
# Clone repository
git clone <repository-url>
cd product_list

# Get dependencies
flutter pub get

# Generate code (freezed, json, injectable)
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

### Code Generation Commands
```bash
# Full build
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (auto-generate on changes)
flutter pub run build_runner watch

# Clean and rebuild
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## 📊 Project Statistics

- **BLoCs**: 3 (Products, Search, SingleProduct)
- **Views**: 3 (Stateless Widgets)
- **Models**: 1 (ProductsResponse with Rating)
- **Repositories**: 2 (Products, SingleProduct)
- **API Endpoints**: 3
- **Features**: 8 (Listing, Pagination, Search, Sorting, Details, Error Handling, Caching, Debouncing)

---

## 🎯 Design Patterns Used

| Pattern | Location | Purpose |
|---------|----------|---------|
| **Clean Architecture** | Entire project | Separation of concerns |
| **BLoC Pattern** | `presentation/bloc/` | State management |
| **Repository Pattern** | `data/repositories/` | Data abstraction |
| **Singleton** | `core/dio_client.dart` | Single HTTP instance |
| **Factory** | Dependency Injection | Object creation |
| **Either/Result** | `domain/failers/` | Error handling |
| **Freezed** | All models | Immutable classes |
| **Event-Driven** | BLoCs | Reactive programming |

---

## 📱 UI/UX Features

### ProductsView
- 2-column grid layout
- Product cards with:
  - Product image with rounded corners
  - Title (2-line truncated)
  - Category badge
  - Price in green highlight
  - Rating with star icon and count
- Infinite scroll with auto-load
- Loading spinner at bottom during pagination
- Error state with retry button
- Empty state message

### SearchView
- Full-screen search interface
- Real-time product filtering
- Sort options (Low to High / High to Low)
- Initial product listing on load
- Clear button in search field
- Product list with images and prices
- Empty state for no results

### SingleProductView
- Large product image
- Full description
- Price and rating display
- Category information
- Product metadata

---

## 🔐 Error Handling Strategy

```
API Error → HTTP Status Code
            ↓
        Dio Exception
            ↓
    MainFailers (Freezed)
            ↓
    [ClientFailure] → 4xx errors
    [ServerFailure] → 5xx errors
    [NetworkFailure] → Connection issues
            ↓
        BLoC State
            ↓
        UI Error Screen
```

---

## � Performance Optimizations

1. **Image Caching** - `cached_network_image` for efficient image loading
2. **Product Caching** - In-memory caching in SearchBloc to avoid re-fetching
3. **Debouncing** - Prevents excessive API calls during search (500ms)
4. **Pagination** - Loads only 10 items per page instead of all products
5. **Lazy Loading** - Dependency injection with lazy initialization
6. **Scroll Controller** - Managed in BLoC, disposed properly
7. **Immutable Classes** - Freezed models for efficient comparison

---

## 🔄 Data Flow Examples

### Example 1: Product Listing Flow
```
1. App Start
   └─ main.dart initializes GetIt DI
   └─ ProdutsBloc created
   └─ ProdutsView builds
   
2. ProductsView Build
   └─ WidgetsBinding.addPostFrameCallback()
   └─ Triggers GetProducts event
   
3. ProdutsBloc Processing
   └─ Calls ProductsRepo.getProducts(limit: 10, page: 1)
   └─ API: GET /products?limit=10&page=1
   └─ Emits state with products list
   
4. UI Update
   └─ GridView displays products
   └─ ScrollController active
   
5. User Scrolls to Bottom
   └─ ScrollController detects maxScrollExtent
   └─ Triggers LoadMore event
   └─ Fetches page 2
   └─ Appends new products to list
```

### Example 2: Search & Sort Flow
```
1. SearchView Opens
   └─ InitializeProducts triggered
   └─ API: GET /products?limit=20&page=1
   └─ Shows all 20 products sorted by price (default)
   
2. User Types 'shirt'
   └─ SearchProducts event added (with debounce)
   └─ 500ms timer starts
   └─ User continues typing → timer resets
   └─ After 500ms silence → event processes
   └─ In-memory filter on _allProducts
   └─ Results emitted
   
3. User Changes Sort
   └─ SortBy event triggered
   └─ Re-sorts current results (no API call)
   └─ Instant UI update
```

---

## 📝 Code Generation

### Auto-Generated Files
```
*.freezed.dart   → Immutable model implementations
*.g.dart         → JSON serialization code
injectable.config.dart → Dependency injection setup
```

**Regenerate after model changes**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## 🐛 Common Issues & Solutions

| Issue | Solution |
|-------|----------|
| Missing `*.freezed.dart` | Run `flutter pub run build_runner build` |
| DI errors (GetIt) | Check `@Injectable()` annotations |
| JSON parsing errors | Verify API response matches model |
| Pagination not working | Verify page parameter increments correctly |
| Search shows old results | Check debounce transformer is applied |

---

## 📚 Learning Resources

- [BLoC Pattern](https://bloclibrary.dev/)
- [Clean Architecture](https://resocoder.com/clean-architecture)
- [Freezed Package](https://pub.dev/packages/freezed)
- [Dio HTTP Client](https://pub.dev/packages/dio)
- [GetIt Service Locator](https://pub.dev/packages/get_it)

---

## 📄 License

This project is open source and available under the MIT License.

---

## 👨‍💻 Author

E-commerce Product Listing Application built with Flutter & BLoC Architecture

**Version**: 1.0.0
**Last Updated**: December 2024
**Platform**: Flutter 3.9.2+
**Architecture**: Clean Architecture + BLoC Pattern

### Project Statistics
- Lines of Code: ~2000+
- Number of Files: 30+
- BLoCs Implemented: 3
- API Endpoints: 3
- Features Implemented: 12+

---

## 📝 Changelog

### Version 1.0.0 (December 2024)
- ✅ Product listing with pagination
- ✅ Search with debouncing
- ✅ Price sorting
- ✅ Single product view
- ✅ Error handling
- ✅ Image caching
- ⚠️ Hive integration skipped (compatibility issues)

---
