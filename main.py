import sqlite3

# Connect to the SQLite database
conn = sqlite3.connect('sales_training.db')
cursor = conn.cursor()

# Function to get relevant modules for an employee based on level
def get_relevant_modules(employee_level):
    cursor.execute("SELECT module_id FROM training_modules WHERE level = ?", (employee_level,))
    relevant_modules = [module[0] for module in cursor.fetchall()]
    return relevant_modules

# Assign modules to each employee based on their level
cursor.execute("SELECT id, level FROM employees")
for employee in cursor.fetchall():
    employee_id, level = employee
    modules = get_relevant_modules(level)

    # Example: Print assigned modules for each employee
    print(f"Employee ID: {employee_id}, Level: {level}, Assigned Modules: {modules}")

# Close the database connection
conn.close()
