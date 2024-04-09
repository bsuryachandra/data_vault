## Setup Database and tables
1. Install the PostgreSQL database from the web for this dbt project.
2. Ensure that the database runs on port 5432 and create a user 'postgres' and database 'analytics' because we have hardcoded these details in the dbt_project.yml file.
3. Download and install the DBeaver tool and connect to analytics database. Afterward, execute the script located at data_vault\setup_script\create_tables_load_data.sql. This script will create the necessary landing tables.
## Setup dbt
1. Make sure you have Python version 3.9 or higher installed on your computer.
2. Create a Python virtual environment named 'datavault' using the command 'virtualenv datavault'.
3. Activate the virtual environment in your Terminal.
Install dbt for PostgreSQL by running 'pip install dbt-postgres'.
4. Download the dbt project from the repository you're using.
Navigate to the project repository in your Terminal and run the following commands:

    a. Run 'dbt deps' to install the project's dependencies.

    b. Execute 'dbt run' to run the dbt models, which will materialize them as tables or views.
    
    c. Generate required artifacts for the dbt project documentation with 'dbt docs generate'.

    d. Launch the dbt docs website by running 'dbt docs serve'.

## Source tables ERD
![This is an Entity Relationship Diagram](erd/lnd.png)

## RAW Vault
![This is an Raw Vault](erd/raw_vault.png)
