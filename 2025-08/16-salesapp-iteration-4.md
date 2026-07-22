# SalesApp Task - Iteration 4

---

### 1. What is the goal?

*   **Primary objective:** Create a web application for sales people to generate personalized offers for clients.
*   **Starting point:** A list of products in a CSV file.
*   **Desired end result:** A PDF offer sent to the client's email.
*   **Inputs:** A CSV file with products, client data (name, email).
*   **Outputs:** A PDF file, an email.

---

### 2. What do I already know?

*   All the core components have been researched and designed.
*   The project structure is defined.
*   The implementation steps are clear.
*   The testing plan is in place.
*   **PDF table with `fpdf`:** I will use the `FPDF.cell()` method in a loop to create the table rows and columns.
*   **SMTP server settings:** I will use Gmail's SMTP server for this project. The settings are: `smtp.gmail.com`, port `587`.
*   **Temporary file handling:** The uploaded CSV files will be deleted after the PDF has been generated and sent.

---

### 3. What do I not know?

*   What are the exact content and branding requirements for the PDF and email templates? (This will be provided by the sales team).

---

### 4. How will I do it?

*   **Project Setup:**
    1.  Create a new git repository for the project.
    2.  Create a virtual environment and install Flask, Flask-WTF, and FPDF.
    3.  Create the project structure as defined in iteration 3.
    4.  Create a `config.py` file with the upload folder path and other configuration.
    5.  Create a `.env` file for the email credentials.

*   **Backend Implementation:**
    1.  In `app/main/routes.py`, create the main route that handles both GET and POST requests.
    2.  Implement the file upload logic, including validation for file type and size.
    3.  Implement the `parse_csv` function.
    4.  Implement the PDF generation logic in a separate `pdf.py` module. The `PDF` class will have methods for creating the header, footer, and table.
    5.  Implement the email sending logic in a separate `email.py` module.
    6.  Implement the main view function that processes the form submission, calls the PDF and email modules, and handles errors.

*   **Frontend Implementation:**
    1.  In `app/main/templates/main.html`, create the HTML structure with a form for file upload and client data.
    2.  Use Jinja2 to dynamically generate the product table from the parsed CSV data.
    3.  Use Bootstrap to style the form, table, and buttons.
    4.  Add client-side validation for the form fields.

*   **Testing:**
    1.  Create a `tests/` directory.
    2.  Write unit tests for `pdf.py` and `email.py` using `pytest`.
    3.  Write integration tests for the Flask application using `pytest` and the Flask test client.
    4.  Perform manual testing of the complete workflow in a staging environment.

*   **Deployment:**
    1.  Create a `requirements.txt` file.
    2.  Choose a deployment platform (e.g., PythonAnywhere).
    3.  Configure the production environment, including the environment variables for email credentials.
    4.  Deploy the application.
