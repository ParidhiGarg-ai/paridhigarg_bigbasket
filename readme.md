The project has four parts - A demo data analytics on bigbasket. Part One deals with SQL, part 2 - spreadsheets, part 3 - 
Tableau and part 4 - Pandas. In this project, we analyse monthly revenue to make different comparisons and clean the raw data too. 
All these four parts are interconnect with each other. We started with generating a python script and running to create a database, 
verified the numbers and then did SQl queries. Exported one of the results as csv to create a spreadsheet and Tableau. Cleaned the raw unfiltered 
data using Pandas. 

To regenerate the database, run the script - generate_date.py by coding (on terminal) - python generate_data.py. Bigsbasket_capstone.db 
, orders_raw.csv, products.csv will be generated. 

REPO STRUCTURE
├── generate_data.py                    # Python script to regenerate database
├── bigbasket_capstone.db              # SQLite database
├── order_raw.csv                       # Raw order data (from generate_data.py)                   
├── products.csv                         # Product reference data
├── Part_One_SQL/
│   ├── 01_foundations.sql                 # SELECT, WHERE, DISTINCT, GROUP BY queries
│   ├── 02_aggregations_joins.sql            # INNER/LEFT JOIN and aggregation queries                    
│   ├── 03_reporting.sql                   # Monthly category revenue report
│   ├── verify.sql                      # Row count verification queries
│                 
├── monthly_category_revenue.csv        # Export from Part One (36 rows + grand total)
├── Part_Two_Spreadsheet/
│   └── BIGBASKET_CAPSTONE PARRT 2 .xlsx        # Google Sheets / Excel workbook with pivot tables and reconciliation
├── Part_Four_Python/
│   └── analysis.ipynb                  # Jupyter notebook: data cleaning, validation, and visualizations
├── ai_log.md.txt                           # AI-assisted prompt documentation (Parts One & Four)
└── PART FOUR README.md                           # data story and Tableau public dashboard
https://prod-in-a.online.tableau.com/#/site/gargparidhi24-5b38fa748a/workbooks/1573779?:origin=card_share_link - TABLEAU 

pointer to the data story - 
pointer to ai_log.md - ai_log.md.txt
pointer to part 4 notebook - analysis.ipynb
