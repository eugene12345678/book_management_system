# Book Management System

## Overview

The **Book Management System** is a comprehensive solution designed to manage the operations of a bookstore, including user registration, login, book inventory management, shopping cart functionality, and order processing. This system provides a seamless experience for managing books, users, and orders while maintaining a secure and efficient backend.

### Features:
- **User Authentication:** Users can sign up, log in, and manage their profiles.
- **Book Inventory Management:** Add, update, and delete books in the system.
- **Shopping Cart:** Users can add books to their cart and proceed to checkout.
- **Order Management:** Track and process user orders efficiently.
- **Admin Panel:** Admins can manage users, books, and view reports.

## Technologies Used
- **Frontend:**
  - HTML5, CSS3, Bootstrap (for responsive design)
  - JavaScript (for interactive features)
- **Backend:**
  - PHP (for server-side logic)
  - MySQL (for database management)
- **Others:**
  - Session management for user login/logout
  - Password hashing for secure login

## Installation

Follow the steps below to set up the **Book Management System** locally:

### Prerequisites:
- PHP >= 7.4
- MySQL (or MariaDB) database server
- A local server environment such as **XAMPP** or **MAMP**

### Steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/book-management-system.git
   cd book-management-system

2. **Set up the database:**

   - Create a new database (e.g., `bookdatabase`) in your MySQL server.

   - Import the database structure (tables and initial data) by running the provided bookdatabase.sql file. You can find it in the `/book_management_system` directory of this project.

   Example of importing the SQL file:

```sql
Copy
Edit
SOURCE /path/to/bookdatabase.sql;
```
3. **Configure the database connection:**

   - Open `includes/connection.php` and update the database credentials as per your local setup.

```php
Copy
Edit
$host = 'localhost';
$username = 'root';  // Your MySQL username
$password = '';      // Your MySQL password
$dbname = 'bookdatabase'; // The name of the database
```
4. **Start your local server:**

   - Start Apache and MySQL via XAMPP or MAMP, or use the built-in PHP server:

```bash
php -S localhost:8000
```
   - Visit ``http://localhost:8000`` in your browser to access the application.

## Usage

Once the application is running, you can use the following features:

1. **Login/Register:**
   - Create a new account or log in to your existing account.
   - Admin users can log in using the following credentials:
     - **Admin Login (username: admin, password: admin)**
     - **Root Admin Login (username: root, password: root)**

2. **Browse Books:**
   - View available books, sorted by categories.
   - Each book displays its title, description, price, and availability.

3. **Add to Cart:**
   - Users can add books to their cart and proceed to checkout.

4. **Order and Checkout:**
   - After adding items to the cart, users can place an order and complete the checkout process.

5. **Admin Panel:**
   - Admins can manage users and books. They can add new books, delete existing ones, and manage customer orders.


## Screenshots
1. **Login Page**
   ![Login Page](screenshots/login_page.png)

2. **Book List**
   ![Book List](screenshots/book_list.png)

3. **Admin Dashboard**
   ![Admin Dashboard](screenshots/admin_dashboard.png)

