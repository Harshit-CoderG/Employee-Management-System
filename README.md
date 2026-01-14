# 🏢 Employee Management System (Servlet + JSP)

A Java-based Employee Management System built using **Servlets, JSP, JDBC, and Sessions**.  
This project was developed during my early learning phase to understand **core backend fundamentals** such as request–response flow, session management, and database interaction without frameworks.

---

## 🚀 Features

- User Registration
- User Login with Session Management
- Home Dashboard
- View Employees
- Edit Employee Details
- Delete Employee
- Logout (Session Invalidation)

---

## 🛠 Tech Stack

- **Java**
- **Servlets**
- **JSP**
- **JDBC**
- **HTTP Sessions**
- **MySQL**
- **HTML / CSS**

---

## 🧱 Project Structure (High Level)

- **Servlets**
  - Handle HTTP requests and responses
  - Perform CRUD operations
  - Manage session logic

- **JSP Pages**
  - `login.jsp` – User login
  - `register.jsp` – User registration
  - `home.jsp` – Dashboard (view, delete, logout)
  - `edit.jsp` – Edit employee details

- **DAO Layer**
  - JDBC-based database operations
  - Separate connection and query logic

---

## 🔐 Authentication & Session Handling

- Login creates an HTTP session
- Protected pages rely on session validation
- Logout invalidates the session
- Unauthorized access redirects to login page

---

## 📌 Learning Outcomes

This project helped me understand:

- How **Servlets and JSP work under the hood**
- Request forwarding vs redirection
- Session-based authentication
- JDBC CRUD operations
- DAO pattern basics
- Web application flow without frameworks

---

## ⚠️ Note (Important)

This is a **learning-phase project** focused on understanding **Servlet + JSP fundamentals**.

In later projects, I have implemented:
- Spring Boot
- Spring Data JPA
- Hibernate mappings
- Spring Security
- REST APIs
- Pagination & DTOs
- JWT-based authentication (planned/implemented)

Those projects demonstrate **cleaner architecture and modern best practices**.

---

## 📷 Screens / Pages Included

- Login Page
- Registration Page
- Home Page (Employee List)
- Edit Employee Page

---

## 📈 Why this project matters

Although Servlets and JSP are legacy technologies, they provide a **strong foundation** for understanding:
- Web fundamentals
- Framework internals
- Backend request lifecycle

This knowledge directly helped me transition smoothly to **Spring Boot and modern backend development**.

---

## 🙍‍♂️ Author

**Harshit**  
Java Backend Developer (Learning Path: Servlets → Spring Boot → Security → REST APIs)

