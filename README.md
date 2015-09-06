## Seattle Linguistic Diversity Survey

What is the goal of the project?
- The goal of the project is to pull data from the US Census (probably the American Community Survey) about which languages are spoken in Seattle, and present the information by geographic region. A user can pick a language, for example Vietnamese, and get back information about which neighborhoods have the most and least citizens who speak Vietnamese at home.
- My stretch goal is to render this data on a map, heatmap style, so that the data can be visually consumed.

Who is the target audience (can be just yourself)?
- My target audience is myself and other people who are curious about linguistic diversity and settlement patterns.
- Another potential audience is civic services looking for information about linguistic needs of communities.

What are your personal learning goals?
- Get experience working with civic data APIs.
- If time permits, get exposure to GeoJSON data.
- Try out new technologies (JS libraries, etc).

What technologies/frameworks/patterns will you be employing?
- I plan to use a Rails backend to manage the API calls, with a Javascript frontend to handle the data rendering, as in the jukebox project.
- I will be using TDD when working in Ruby/Rails.
- If time permits, I will be using the Leaflet.js library to render the geographic data.

What are the tech and/or skill dependencies of your project?
- I will need to get an access key from the US Census to access that data. I already have a Socrata API key if I use their data stores instead.
- This project will require knowledge of Ruby & Rails, which I feel strong on, and Javascript, which I feel weaker on. It will also involve completely new geographic datatypes, which I am looking forward to getting exposure to.

What does success look like for this project? What does done mean?
- Success looks like a webpage on which a user can select a language, eg. Vietnamese, Russian, or Spanish, and get back a list of Seattle neighborhoods or zipcodes in order of how many speakers of that language live in that neighborhood.

For task breakdown, see the [Trello board](https://trello.com/b/VlQgdi5R/break-project)
