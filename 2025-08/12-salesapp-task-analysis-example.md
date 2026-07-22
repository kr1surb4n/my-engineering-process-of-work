# Task Analysis Example: SalesApp

This document contains an example of the task analysis process, extracted from `my-content/docs-from-righp/salesapp_log.org`.

---

### 1. What is the goal?

*   I want to have a web application which will be used by sales people to show to the client a personalized offer.
*   The application should be able to:
    *   load a list of products from a csv file
    *   allow the user to select products
    *   allow the user to enter client data
    *   generate a pdf document with the offer
    *   send the pdf to the client's email

---

### 2. What do you already know?

*   The application will be a web application.
*   I will use python for the backend.
*   I will use flask as a web framework.
*   I will use a simple csv file as a database for products.
*   The csv file will have the following columns: `product_name, price, description`.
*   I will use a library to generate pdfs. I have used `fpdf` in the past.
*   I will use a library to send emails. I have used `smtplib` in the past.

---

### 3. What do you not know?

*   How to create a web form to select products and enter client data.
*   How to upload a csv file to the server.
*   How to style the web application.
*   How to deploy the application.

---

### 4. How will you do it?

*   **High-level plan:**
    *   Create a flask application with a single page.
    *   The page will have a form to upload the csv file.
    *   After uploading the csv file, the products will be displayed in a table.
    *   The user can select products from the table.
    *   There will be a form to enter client data (name, email).
    *   A "Generate PDF" button will generate the pdf and send it to the client's email.

*   **Implementation details:**
    *   Create a virtual environment and install flask.
    *   Create a flask application with a single route that renders a template.
    *   Create a template with a form to upload the csv file.
    *   Create a view function that handles the file upload and saves the file to the server.
    *   Read the csv file and pass the data to the template.
    *   Display the products in a table with checkboxes.
    *   Create a form to enter client data.
    *   Create a view function that handles the form submission.
    *   Get the selected products and client data from the form.
    *   Generate a pdf with the selected products and client data.
    *   Send the pdf to the client's email.

*   **Testing plan:**
    *   Test the file upload with a valid and invalid csv file.
    *   Test the product selection.
    *   Test the client data form with valid and invalid data.
    *   Test the pdf generation.
    *   Test the email sending.
