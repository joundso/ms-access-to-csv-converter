# Convert Microsoft Access Database-files to csv files

## Usage

1. Copy your access database to the `./in/` folder and name it `db.accdb`.
2. Run `docker-compose up`.
3. The resulting csv files (one csv per table contained in the input-file) are available in `/out/`.

## Background information

The tool used to convert the database is copied from here: <https://www.rebasedata.com/convert-accdb-to-csv-online>.
For further information see this page.
