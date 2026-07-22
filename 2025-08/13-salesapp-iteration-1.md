# SalesApp Task - Iteration 1

---

### 1. What is the goal?

*   **Primary objective:** Create a web application for sales people to generate personalized offers for clients.
*   **Starting point:** A list of products in a CSV file.
*   **Desired end result:** A PDF offer sent to the client's email.
*   **Inputs:** A CSV file with products, client data (name, email).
*   **Outputs:** A PDF file, an email.

---

### 2. What do I already know?

*   The backend will be in Python with the Flask framework.
*   Products will be stored in a CSV file with columns: `product_name, price, description`.
*   I have some experience with `fpdf` for PDF generation and `smtplib` for sending emails.

---

### 3. What do I not know?

*   How to handle file uploads in Flask?
*   How to create a dynamic web form based on the CSV content?
*   What is the best way to structure the Flask application?
*   How to manage email credentials securely?
*   How to style the frontend to be user-friendly?
*   What are the requirements for the PDF layout?
*   How to handle potential errors (e.g., invalid CSV format, email sending failure)?
*   How to deploy the final application?

---

### 4. How will I do it?

*   **High-level plan:**
    1.  Set up a basic Flask application.
    2.  Create a single webpage with a form to upload the CSV file.
    3.  Parse the uploaded CSV and display the products.
    4.  Allow the user to select products and enter client details.
    5.  Create a "Generate" button that triggers PDF creation and emailing.

*   **Implementation details:**
    *   This is a rough sketch and needs more detail.

*   **Testing plan:**
    *   Manual testing of the web interface.
