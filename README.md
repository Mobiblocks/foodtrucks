# Ftrucks

PostrgresSQL full database dump in file ftrucks_dev.dump
to restore from the dump execute: psql ftrucks_dev < ftrucks_dev.dump

I did import from original CSV only 7 fields: LocationID, Applicant, FacilityType, Location Description, Address, Status and Food Items

I believe the most useful for a team in Bay Area will be to find a truck based on desired food, so I implemented a web page that allows search by keywords, ex: "mexican" "indian" "chinese"

To view the data launch the server with mix phx.server and go to http://localhost:4000/trucks

in top right corner input enter desired food Ex: Chinese and hit enter.
page will display only trucks offering Chinese food.

See 3 adiacent screenshots: 
- Scheen Shot Chinese.png 
- Scheen Shot Indian.png 
- Scheen Shot Mexican.png 

Also click on item ID in the table will open a separate page with Food Truck Details. See
- Truck Details Page.png