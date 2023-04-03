Converts a "Bank to Customer (B2C) Statement"  in ISO 20022 camt.053.001.04 XML format into a CSV File - e.g. for Excel analysis. Python script and XSL file. More a python/XML training project for me than anything else :-)

Files
-----
"Convert camt.053 to CSV.py" : python script (works without the XSL)

"camt.053.xsl" - XSL file. Using a camt.053 XML and this XSL file as input, an "XSLT processor" will render a table with bookings in HTML. The "XSLT processor" can be a webbrowser, a python script using the saxonche library etc.

See also
--------
https://github.com/AMTQ/iso_camt053_to_df seems to be a far more sophisticated solution to camt.053 processing.
https://www.w3schools.com/xml/xsl_transformation.asp

camt.053 Specs
https://www.swift.com/swift_resource/35371
https://www.swift.com/search?keywords=camt.053&search-origin=onsite_search
https://www.ebics.de/de/datenformate
