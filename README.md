 # Smart Ahwa

Smart Ahwa is a modern, smart cafe management system designed to streamline operations for traditional coffee shops ("Ahwa") with a digital touch. This project aims to blend the rich culture of local cafes with technology, providing tools for both shop owners and customers to enhance the overall experience.

## Features

- **Order Management:** Easily take, track, and manage orders from customers.
- **Menu Customization:** Add, edit, or remove menu items with images and prices.
- **Table Management:** Assign orders to specific tables and monitor their status.
- **Customer Portal:** Allow customers to view the menu, place orders, and request service via their own devices.
- **Analytics Dashboard:** View sales, popular items, customer feedback, and more.
- **Notifications:** Real-time updates for orders and requests.

## Screenshots

1. **Add Order**: Users can add a new order by entering the customer name, selecting a product, and adding any special instructions.

Add Order                                  

<img width="375" height="812" alt="Screenshot_20250918-165336" src="https://github.com/user-attachments/assets/d2870574-a077-49c1-a3a4-05b7efe5e43a" />

**-------------------------------------------------------------------------------------------**
 
2. **Pending Orders Dashboard**: Displays all pending orders, making it easy for staff to track and manage.

Pending Orders Dashboard                   
<img width="375" height="812" alt="Screenshot_20250918-165344" src="https://github.com/user-attachments/assets/405acc2d-ce95-49df-ab88-f5e34bf4f079" />

**-------------------------------------------------------------------------------------------**


3. **Order Details**: Shows the details of a selected order, with an option to mark the order as completed.

Order Details                             
<img width="375" height="812" alt="Screenshot_20250918-165353" src="https://github.com/user-attachments/assets/b25a854d-bb23-497d-9634-d54a33d1bbf5" />

**-------------------------------------------------------------------------------------------**


4. **Report**: Provides summary analytics such as the total number of orders and the top-ordered drink.

Report                                     
<img width="375" height="812" alt="Screenshot_20250918-165402" src="https://github.com/user-attachments/assets/6135f960-c901-401d-affd-3a529340da66" />

### Screen Descriptions


## SOLID Principles and OOP

This project intentionally applies Object-Oriented Programming (OOP) and SOLID principles for maintainability and scalability:

- **Single Responsibility Principle (SRP):**
  - `lib/report/data/report_service.dart`: The `ReportService` class is responsible only for generating reports, delegating the actual report logic to the injected `ReportModel`.
- **Open/Closed Principle (OCP):**
  - `ReportService` in `lib/report/data/report_service.dart` is open for extension (by passing different implementations of `ReportModel`), but closed for modification.
- **Liskov Substitution Principle (LSP):**
  - Any class implementing the contract of `ReportModel` can be used with `ReportService` without altering the correctness of the program.
- **Interface Segregation Principle (ISP):**
  - By designing small, focused model and service classes, each class exposes only relevant operations, avoiding large, monolithic interfaces.
- **Dependency Inversion Principle (DIP):**
  - `ReportService` depends on the abstraction `ReportModel` and not on concrete implementations.

### Where OOP and SOLID are Applied

- **`lib/report/data/report_service.dart`**  
  - Example:
    ```dart
    class ReportService {
      final ReportModel _report;
      ReportService(this._report);
      Map<String, dynamic> generateReport(List<OrderModel> orders) {
        return _report.generate(orders);
      }
    }
    ```
  - `ReportService` uses dependency injection and works with any implementation of `ReportModel`, following OCP and DIP.

- **Widget Structure**  
  - Classes like `SmartAhwaManagerApp`, `ReportScreen`, and others in `lib/` demonstrate OOP via the use of inheritance (`StatelessWidget`), encapsulation, and modular structure.

- **Extendability and Maintainability**  
  - New report types or features can be added without modifying existing service logic, thanks to OOP and SOLID adherence.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart
- (Backend/database prerequisites as applicable)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Bahnooos/smart-ahwa.git
   cd smart-ahwa
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```


## Project Structure

```
smart-ahwa/
├── lib/                # Flutter/Dart source code
│   ├── report/
│   │   ├── data/       # Report models and services (SOLID applied here)
│   │   └── screen/
│   └── ...             # Other features and screens
├── android/            # Android native code
├── linux/              # Linux native code
├── windows/            # Windows native code
├── web/                # Web support
├── test/               # Tests
└── README.md           # Project overview
```

## Contributing

1. Fork the repository.
2. Create your feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a pull request.

---

Feel free to open issues or suggestions to help us improve Smart Ahwa!

