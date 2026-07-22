# SalesApp Task - Iteration 3

---

### 1. What is the goal?

*   **Primary objective:** Create a web application for sales people to generate personalized offers for clients.
*   **Starting point:** A list of products in a CSV file.
*   **Desired end result:** A PDF offer sent to the client's email.
*   **Inputs:** A CSV file with products, client data (name, email).
*   **Outputs:** A PDF file, an email.

---

### 2. What do I already know?

*   **File uploads in Flask:**
    '''python
    from flask import Flask, request
    from werkzeug.utils import secure_filename
    import os

    app = Flask(__name__)
    app.config['UPLOAD_FOLDER'] = '/path/to/uploads'

    @app.route('/upload', methods=['POST'])
    def upload_file():
        if 'file' not in request.files:
            return 'No file part'
        file = request.files['file']
        if file.filename == '':
            return 'No selected file'
        if file:
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            return 'File uploaded successfully'
    '''
*   **CSV Parsing:**
    '''python
    import csv

    def parse_csv(filepath):
        products = []
        with open(filepath, 'r') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                products.append(row)
        return products
    '''
*   **PDF Generation:** I will use the `FPDF` library. The structure will be:
    *   Header with company logo and title.
    *   Client data section.
    *   Table with selected products, prices, and total.
    *   Footer with contact information.
*   **Email Sending:**
    '''python
    import smtplib
    from email.mime.multipart import MIMEMultipart
    from email.mime.text import MIMEText
    from email.mime.base import MIMEBase
    from email import encoders

    def send_email(to_address, subject, body, attachment_path):
        # ... (implementation details)
    '''
*   **Security:** I will use Flask-WTF to protect against CSRF attacks. I will also sanitize all user input to prevent XSS.

---

### 3. What do I not know?

*   What is the most efficient way to create the PDF table with `fpdf`?
*   What are the exact SMTP server settings for the email provider?
*   What is the best way to handle the temporary uploaded CSV files? Should they be deleted after processing?

---

### 4. How will I do it?

*   **Project Structure:**
    '''
    salesapp/
    ├── app/
    │   ├── __init__.py
    │   ├── main/
    │   │   ├── __init__.py
    │   │   ├── routes.py
    │   │   └── templates/
    │   │       └── main.html
    │   ├── static/
    │   └── templates/
    ├── config.py
    └── run.py
    '''
*   **Implementation Steps:**
    1.  Initialize the Flask project with the structure above.
    2.  Implement the file upload functionality in `app/main/routes.py`.
    3.  Implement the CSV parsing logic.
    4.  Create the Jinja2 template to display the products in a table with checkboxes.
    5.  Implement the logic to process the form submission, including the selected products and client data.
    6.  Implement the PDF generation logic, creating a `PDF` class that inherits from `FPDF`.
    7.  Implement the email sending logic, using environment variables for credentials.
    8.  Add error handling for all I/O operations and external services.
    9.  Add basic styling with Bootstrap.

*   **Testing Plan:**
    *   Write unit tests for the `parse_csv` function.
    *   Write unit tests for the `PDF` class.
    *   Write unit tests for the `send_email` function using a mock SMTP server.
    *   Write integration tests for the file upload and form submission workflow.
