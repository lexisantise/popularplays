popularplays
================
Alexis Santise
2021-05-02

This package pulls the last songs the user has played on Spotfiy and
gives a visual of how popular each song is based on Spotify’s current
records

This README is derived from Charlie Thompson’s excellent
[spotifyr](https://www.rcharlie.com/spotifyr/) documentation.

## Install

Install from GitHub with the following code:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("lexisantise/popularplays")
```

This package uses the user’s <code>Access Token</code> and
<code>spotifyr</code> to pull the last songs played and returns a visual
of the popularity of each song.

## Usage

First, set up a Dev account with Spotify to access their Web API
[here](https://developer.spotify.com/dashboard/). This will give the
user an Access Token (<code>Client ID</code> and <code>Client
Secret</code>) that the user will input into the function.

There is one function currently live for popularplay.

To use, the user must enter the following code, inserting their
<code>Client ID</code>, <code>Client Secret</code> where appropriate:

``` setup
PopularPlays("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")

or

PopularPlays(Client_ID = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
Client_Secret = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
```

When the user runs the code, they will be asked if they want to: "Use a
local file (‘.httr-oauth’), to cache 0Auth access credentials between R
sessions? 1. Yes 2. No

In the console, enter the following code when prompted:

``` prompt1
Selection: 1
```

The user will then be asked to: “Enter an item from the menu, or 0 to
exit” In the console, enter the following code when prompted:

``` prompt2
Selection: 0
```

The user will then see a bar graph of the Last 20 Songs Played by
Popularity. The y-axis is the title of the last 20 songs the user has
played. The X-Axis is a scale of popularity based on Spotify’s current
records from 0-100 (0 being least popular, 100 being most popular). The
user can compare each song’s popularity by looking at the length and
color of the bars. The lighter the green, the more popular. The darker
the green, the less popular.

From this graph, the user can learn about their listening habits. If the
user tends to listen to new releases from big artists, or the top charts
playlists that Spotify offers, the bar graph may be consistently long on
the x-axis. If the user tends to listen to older music, the popularity
scores of the songs may be consistently lower. If the user listens to
both spectrums, the bars may be sporadic in popularity.
