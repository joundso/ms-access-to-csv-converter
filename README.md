# Convert Microsoft Access Database files to csv files

## Usage

1. Copy your access database (witch file type `.accdb`) to the `./in/` folder and name it `db.accdb`.
2. Run `docker-compose up`.
3. The resulting csv files (one csv per table contained in the input-file) are available in `/out/`.

```sh
docker run --rm -it \
-v /data/:/data/ ghcr.io/joundso/ms-access-to-csv-converter:v1.0.0 \
convert \
--output-format=csv \
/path/to/db.accdb /path/to/ouput
```

## Background information

:warning: Do use with care if you handle sensible information in the database!

> When processing a database, the database is first sent to the secure RebaseData servers which then return the converted data.

Source: [GitHub Repo of the converter](https://github.com/rebasedata/java-client)

The tool used to convert the database is copied from here: <https://www.rebasedata.com/convert-accdb-to-csv-online>. For further information see this page.
