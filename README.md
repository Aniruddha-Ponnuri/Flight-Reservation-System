# Flight Reservation System

## 📌 Overview
The **Flight Reservation System** is a web-based application designed to streamline the flight booking process while providing management tools for administrators. It offers a user-friendly interface for searching flights, making bookings, managing passengers, and handling secure payments. The system also includes an admin dashboard for managing flights and reservations.

## 🚀 Features
### 🛫 User Features
- **User Authentication:** Secure login & registration with JWT authentication.
- **Flight Search & Booking:** Search for flights based on origin, destination, and date.
- **Passenger Management:** Add passenger details and view booking history.
- **Payment Integration:** Secure payment processing for ticket reservations.
- **Responsive UI:** Fully functional on mobile and desktop.

### 🛬 Admin Features
- **Flight Management:** Add, update, and manage flight details.
- **Real-time Booking Management:** View and manage customer bookings.

## 🏗️ Tech Stack
### 🔹 Frontend
- React.js (with React Router for navigation)
- Axios (for API communication)

### 🔹 Backend
- Spring Boot (RESTful APIs)
- JPA (Java Persistence API)
- JWT (for authentication)

### 🔹 Database
- MySQL (stores user, booking, and flight data)

## 🛠️ Installation & Setup
### 📥 Prerequisites
- Install **Node.js** and **npm** for frontend development.
- Install **Java (JDK 17+)** for backend development.
- Install **MySQL** for database setup.

### 🔧 Backend Setup
```bash
# Navigate to backend folder
cd backend

# Build & run the Spring Boot application
./mvnw spring-boot:run
```

### 💻 Frontend Setup
```bash
# Navigate to frontend folder
cd frontend

# Install dependencies
npm install

# Start the development server
npm start
```

## 🛣️ API Endpoints
### 🔹 Authentication
- `POST /api/register` → Register a new user
- `POST /api/login` → Authenticate and receive JWT token

### 🔹 Flights
- `GET /api/flights` → Fetch all available flights
- `GET /api/flights/search` → Search for flights based on criteria

### 🔹 Bookings
- `POST /api/bookings` → Create a new booking
- `GET /api/bookings` → Fetch user booking history
- `DELETE /api/bookings/{id}` → Cancel a booking

## 🔒 Security Measures
- **JWT Authentication** for session management
- **Password Hashing** for secure login credentials
- **CORS Configurations** to ensure frontend-backend communication


