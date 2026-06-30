# MS Rosebud Lux - Enterprise Shortlet Management System

## 🏆 Premium All-in-One Management Platform

MS Rosebud Lux is an enterprise-grade Flutter application designed to manage every aspect of luxury shortlet properties, from bookings and payments to housekeeping, kitchen operations, laundry services, and staff management.

## ✨ Features

### 📊 Dashboard
- Real-time occupancy statistics
- Revenue overview with charts
- Daily arrivals and departures
- Active guest count
- Pending payments tracker
- Housekeeping, kitchen, and laundry status
- Maintenance request alerts
- Quick action buttons
- Recent activity log

### 🏠 Property Management
- Multiple properties support
- Multiple apartments per property
- Multiple rooms per apartment
- Floor management
- Room categories and types
- Amenities management
- Professional image gallery
- 360° virtual tour support
- Real-time availability tracking
- Seasonal pricing
- Dynamic pricing engine
- Special offers and discounts
- Property documents storage

### 📅 Booking Management
- Online booking engine
- Walk-in booking support
- Calendar-based reservations
- Booking modification
- Cancellation with refund handling
- Booking extensions
- Group bookings
- Detailed booking history
- Booking timeline tracking
- Waitlist management
- Instant confirmation
- Automated invoice generation

### 👥 Guest Management
- Complete guest profiles
- ID/Passport verification
- Guest booking history
- Emergency contacts
- VIP guest classification
- Returning guest identification
- Guest notes and preferences
- Digital registration forms
- E-signature support
- Guest loyalty tracking
- Blacklist management

### 💳 Payment Management
- Secure payment gateway integration
- Deposit handling
- Full and partial payments
- Multiple payment methods
- Outstanding balance tracking
- Refund processing
- Automated receipt generation
- Invoice management
- Financial reports
- Expense tracking
- Revenue analytics
- Tax calculation support

### 🧹 Housekeeping Module
- Room cleaning schedules
- Staff assignment
- Cleaning checklist templates
- Room inspection reports
- Cleaning history
- Linen replacement tracking
- Room readiness verification
- Inventory alerts
- Staff performance tracking

### 🍳 Kitchen Module
- Guest meal requests
- Food ordering system
- Breakfast/lunch/dinner management
- Room service tracking
- Kitchen queue management
- Order status tracking
- Menu management
- Ingredients inventory
- Stock alerts
- Supplier management
- Kitchen staff coordination
- Order billing

### 👕 Laundry Module
- Laundry request management
- Pickup scheduling
- Delivery scheduling
- Item tracking
- Wash status monitoring
- Dry status tracking
- Ironing status
- Lost item reports
- Laundry pricing
- Staff assignment
- Laundry history
- Inventory management

### 📦 Inventory Management
- Furniture tracking
- Appliance inventory
- Cleaning supplies tracking
- Kitchen inventory
- Laundry inventory
- Restock alerts
- Purchase records
- Supplier records
- Barcode/QR code scanning
- Asset depreciation tracking

### 🔧 Maintenance
- Issue reporting
- Work order creation
- Technician assignment
- Asset maintenance tracking
- Repair history
- Cost tracking
- Priority classification
- Status monitoring
- Preventive maintenance schedules
- Equipment maintenance logs

### 👔 Staff Management
- Employee profiles
- Department organization
- Role management
- Attendance tracking
- Leave management
- Shift scheduling
- Payroll support
- Performance tracking
- Role-based permissions
- Staff performance reports
- Training records

### 💬 Customer Communication
- SMS notifications
- Email notifications
- WhatsApp integration
- Booking confirmations
- Payment reminders
- Promotional messages
- Guest feedback requests
- In-app messaging
- Push notifications
- Bulk messaging support

### 📈 Reports & Analytics
- Occupancy reports
- Revenue reports
- Booking reports
- Expense reports
- Profit/loss statements
- Tax reports
- Customer insights
- Staff performance reports
- Inventory reports
- Maintenance reports
- Laundry reports
- Kitchen reports
- Export to PDF, Excel, CSV

### 🔒 Security
- Two-factor authentication (2FA)
- End-to-end encryption
- Audit logs
- Device management
- Login history
- Session management
- Automated backups
- GDPR-compliant data handling
- Role-based access control (RBAC)
- Password encryption

### ⚙️ Administration
- User management
- Role management
- Subscription management
- Property management
- Booking management
- System settings
- Content management
- Audit logs
- Theme customization
- Company profile settings

### 🔌 Integrations
- Stripe payment gateway
- Flutterwave payment
- Paystack payment
- Google Calendar
- Outlook Calendar
- Google Maps
- WhatsApp Business
- Email services (SMTP)
- SMS gateways (Nexmo, Twilio)
- Accounting software APIs

## 🎨 Design Features

- **Premium Luxury UI** with black, gold, white, and emerald theme
- **Dark and Light Modes** for user preference
- **Fully Responsive** for mobile, tablet, and desktop
- **Fast Performance** with optimized widgets
- **Smooth Animations** for better UX
- **Accessibility Compliant** for all users
- **Modern Dashboard** with interactive charts and widgets
- **Glassmorphism Effects** where appropriate
- **Professional Typography** with Poppins font
- **Consistent Spacing** and component sizing

## 🛠️ Technology Stack

- **Framework**: Flutter (latest stable)
- **Language**: Dart
- **Architecture**: MVVM + Clean Architecture
- **State Management**: Riverpod (with Provider as fallback)
- **Navigation**: GoRouter
- **Local Database**: Drift/Isar
- **Backend**: Firebase/Supabase ready
- **Authentication**: Firebase Auth + OAuth + 2FA
- **Storage**: Cloud storage for images/documents
- **API**: RESTful + GraphQL ready
- **Hosting**: Cloud-ready architecture
- **Charts**: FL Chart
- **Forms**: Form validation with validators
- **Notifications**: Local & Push notifications
- **PDF Generation**: PDF library
- **Excel Export**: Excel library
- **QR/Barcode**: Barcode widget + QR scanner

## 📱 Supported Platforms

✅ iOS  
✅ Android  
✅ Web (Chrome, Firefox, Safari)  
✅ Windows Desktop  
✅ macOS Desktop  
✅ Linux Desktop  

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Git
- IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/joelozi16/rosebud-lux.git
   cd rosebud-lux
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   # Mobile (Android)
   flutter run

   # iOS
   flutter run -d ios

   # Web
   flutter run -d chrome

   # Windows
   flutter run -d windows
   ```

## 📁 Project Structure

```
rosebud_lux/
├── lib/
│   ├── main.dart                          # App entry point
│   ├── config/
│   │   ├── theme/                         # Theme configuration
│   │   └── routes/                        # Navigation routing
│   ├── core/
│   │   ├── constants/                     # App constants
│   │   ├── utils/                         # Utility functions
│   │   └── extensions/                    # Extension methods
│   ├── data/
│   │   ├── datasources/                   # Remote & local data sources
│   │   ├── models/                        # Data models
│   │   └── repositories/                  # Repository implementations
│   ├── domain/
│   │   ├── entities/                      # Business entities
│   │   ├── repositories/                  # Repository interfaces
│   │   └── usecases/                      # Business logic
│   ├── models/                            # Data models
│   ├── providers/                         # State management
│   └── presentation/
│       ├── screens/                       # UI Screens
│       │   ├── dashboard/
│       │   ├── properties/
│       │   ├── bookings/
│       │   ├── guests/
│       │   ├── housekeeping/
│       │   ├── kitchen/
│       │   ├── laundry/
│       │   ├── payments/
│       │   ├── staff/
│       │   ├── maintenance/
│       │   ├── inventory/
│       │   ├── reports/
│       │   └── settings/
│       ├── widgets/                       # Reusable widgets
│       └── themes/                        # UI themes
├── assets/
│   ├── images/                            # Image assets
│   ├── icons/                             # Icon assets
│   └── fonts/                             # Custom fonts
├── test/                                  # Unit and widget tests
├── pubspec.yaml                           # Dependencies
└── README.md                              # This file
```

## 👥 User Roles

- **Super Admin**: Full system access
- **Property Owner**: Manage all their properties
- **Manager**: Manage properties and staff
- **Receptionist**: Handle bookings and guests
- **Housekeeping Staff**: Manage cleaning tasks
- **Kitchen Staff**: Manage meal orders
- **Laundry Staff**: Manage laundry requests
- **Accountant**: Manage payments and finances
- **Maintenance Staff**: Handle repairs and maintenance
- **Security Staff**: Monitor property access

## 🔐 Security Considerations

- All sensitive data is encrypted
- Passwords are hashed using industry-standard algorithms
- API calls are made over HTTPS
- JWT tokens are used for authentication
- Audit logs track all critical actions
- GDPR compliance is maintained
- Regular backups are automated

## 📝 API Documentation

API documentation will be available at `/api/docs` when deployed.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support, email support@msr osebudlux.com or open an issue on GitHub.

## 🎯 Roadmap

- [ ] AI-powered pricing optimization
- [ ] AI occupancy prediction
- [ ] AI revenue forecasting
- [ ] AI customer support chatbot
- [ ] AI maintenance prediction
- [ ] Advanced analytics dashboard
- [ ] Mobile app optimization
- [ ] Offline mode enhancements
- [ ] Integration with more payment gateways
- [ ] Multi-language support

## 👨‍💻 Author

**Joel Ozioko**
- GitHub: [@joelozi16](https://github.com/joelozi16)
- Email: joelozioko055@gmail.com

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- All contributors and supporters

---

**Made with ❤️ by MS Rosebud Lux Team**
