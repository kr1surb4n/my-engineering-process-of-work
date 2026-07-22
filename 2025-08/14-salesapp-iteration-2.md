# SalesApp Task - Iteration 2

---

### 1. What is the goal?

*   **Primary objective:** Create a web application for sales people to generate personalized offers for clients.
*   **Starting point:** A list of products in a CSV file.
*   **Desired end result:** A PDF offer sent to the client's email.
*   **Inputs:** A CSV file with products, client data (name, email).
*   **Outputs:** A PDF file, an email.

---

### 2. What do I already know?

*   **File uploads in Flask:** Flask's documentation shows how to handle file uploads using `request.files`. The uploaded file can be saved to a temporary directory.
*   **Dynamic web forms:** I can use a templating engine like Jinja2 (which is the default in Flask) to dynamically generate the product selection form based on the parsed CSV data.
*   **Flask application structure:** A good practice is to use Blueprints to structure the application, even for a small project. This will make it easier to maintain and scale.
*   **Securely managing email credentials:** I can use environment variables to store the email credentials, so they are not hardcoded in the source code.
*   **Frontend styling:** I will use a simple CSS framework like Bootstrap to make the application look clean and professional without much effort.
*   **PDF layout:** The PDF should have a header with the company logo, the client's data, a table with the selected products, and a footer with the total price.
*   **Error handling:** I will use `try...except` blocks to handle potential errors, such as invalid CSV format or email sending failures. I will log the errors and show a user-friendly message.

---

### 3. What do I not know?

*   What is the best way to handle large CSV files? Should I process them in memory or store them in a temporary database?
*   What are the specific requirements for the email template?
*   How to make the application secure against common web vulnerabilities (e.g., XSS, CSRF)?
*   What is the best way to deploy a Flask application for a small project like this? (e.g., Heroku, PythonAnywhere, or a simple VPS)

---

### 4. How will I do it?

*   **High-level plan:**
    1.  Set up a Flask project with a Blueprint structure.
    2.  Create a main page with a form to upload the CSV file.
    3.  Implement the file upload logic, including validation of the file format.
    4.  Parse the CSV and display the products in a table using Jinja2 and Bootstrap.
    5.  Implement the logic to select products and enter client details.
    6.  Implement the PDF generation logic using `fpdf`.
    7.  Implement the email sending logic using `smtplib` and environment variables for credentials.
    8.  Add error handling and logging.

*   **Implementation details:**
    *   Create a `main` Blueprint with a route for the main page.
    *   Create a template for the main page with a form for file upload and client data.
    *   The view function will handle both GET and POST requests.
    *   On POST, the view function will save the uploaded file, parse it, and re-render the template with the product list.
    *   Another view function will handle the form submission for generating the PDF and sending the email.

*   **Testing plan:**
    *   Write unit tests for the CSV parsing logic.
    *   Write unit tests for the PDF generation logic.
    *   Write unit tests for the email sending logic.
    *   Manual testing of the web interface.
