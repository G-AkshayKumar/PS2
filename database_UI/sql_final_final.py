from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

def query_first_time_docs(export_country):
    conn = mysql.connector.connect(
        host='localhost',        # Replace with your MySQL host
        user='root',             # Replace with your MySQL username
        password='aksql10',      # Replace with your MySQL password
        database='products'      # Replace with your MySQL database name
    )
    cursor = conn.cursor()

    query = """
        SELECT certification_name, issuing_authority
        FROM certification_general
        WHERE export_country = %s AND type = 'First-Time Export'
    """

    try:
        cursor.execute(query, (export_country.strip(),))
        first_time_docs = cursor.fetchall()
        print(f"First-time export documents fetched: {first_time_docs}")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        first_time_docs = []
    finally:
        conn.close()

    return first_time_docs

def query_general_docs(export_country):
    conn = mysql.connector.connect(
        host='localhost',        # Replace with your MySQL host
        user='root',             # Replace with your MySQL username
        password='aksql10',      # Replace with your MySQL password
        database='products'      # Replace with your MySQL database name
    )
    cursor = conn.cursor()

    query = """
        SELECT certification_name, issuing_authority
        FROM certification_general
        WHERE export_country = %s AND type = 'General'
    """

    try:
        cursor.execute(query, (export_country.strip(),))
        general_docs = cursor.fetchall()
        print(f"General documents fetched: {general_docs}")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        general_docs = []
    finally:
        conn.close()

    return general_docs

def query_certification_links(certificate_name):
    conn = mysql.connector.connect(
        host='localhost',        # Replace with your MySQL host
        user='root',             # Replace with your MySQL username
        password='aksql10',      # Replace with your MySQL password
        database='products'      # Replace with your MySQL database name
    )
    cursor = conn.cursor()

    query = """
        SELECT issuing_agency, agency_url
        FROM certification_links
        WHERE certificate_name = %s
    """

    try:
        cursor.execute(query, (certificate_name.strip(),))
        link_details = cursor.fetchone()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        link_details = None
    finally:
        conn.close()

    return link_details

def query_documents_procedure(certificate_name):
    conn = mysql.connector.connect(
        host='localhost',        # Replace with your MySQL host
        user='root',             # Replace with your MySQL username
        password='aksql10',      # Replace with your MySQL password
        database='products'      # Replace with your MySQL database name
    )
    cursor = conn.cursor()

    query = """
        SELECT certificate_name, step_description
        FROM document_procedures
        WHERE certificate_name = %s
    """

    try:
        cursor.execute(query, (certificate_name.strip(),))
        steps = cursor.fetchall()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        steps = []
    finally:
        conn.close()

    return steps

@app.route('/')
def index():
    return render_template('index2.html')

@app.route('/search', methods=['POST'])
def search():
    export_country = request.form.get('export_country', '').strip()
    product_category = request.form.get('product_category', '').strip()
    hs_code = request.form.get('hs_code', '').strip()
    first_time_export = request.form.get('first_time_export', '').strip()

    first_time_docs = []
    general_docs = []

    if first_time_export.lower() == 'yes':
        first_time_docs = query_first_time_docs(export_country)
    
    general_docs = query_general_docs(export_country)

    return render_template('results22.html', first_time_docs=first_time_docs, general_docs=general_docs)

@app.route('/details', methods=['POST'])



def details():
    certificate_name = request.form.get('certificate_name', '').strip()

    link_details = query_certification_links(certificate_name)

    if link_details:
        agency, url = link_details
        if url and url != 'N/A':
            return render_template('details.html', agency=agency, url=url)
        else:
            steps = query_documents_procedure(certificate_name)
            return render_template('steps.html', certificate_name=certificate_name, steps=steps)
    else:
        steps = query_documents_procedure(certificate_name)
        if steps:
            return render_template('steps.html', certificate_name=certificate_name, steps=steps)
        else:
            return "No data found for the given certification name.", 404

if __name__ == '__main__':
    app.run(debug=True, port=5009)
