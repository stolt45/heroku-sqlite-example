# Heroku Sqlite Example App

This is a simple rails app that's connecting to a sqlite database. 

### Why the submodule?

I didn't want to clone the built sqlite build in on each boot. Submodules allows for the needed files to be in place without over-populating your primary repo. 

### Database URL Wonkiness

For later versions of rails the app will read out of DATABASE_URL by defaut if it's present. So I removed it for simplicity in this example.

### The setup

Drop the following line into your Procfile to set things up. 

`web: heroku-sqlite3/setup/setup.sh && $WHATEVER YOU USE TO START THE APP`

Note: you're building the sqlite3 gem before the app boots so it'll take a bit to get the app booted. Heroku can increase the boot timeout on an app if needed. Just ask their awesome support team.


