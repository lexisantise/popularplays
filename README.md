popularplays
================
Alexis Santise
2021-04-22

First, set up a Dev account with Spotify to access their Web API
[here](https://developer.spotify.com/dashboard/). This will give you
your Access Token (<code>Client ID</code> and <code>Client
Secret</code>) that you will input into the function.

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

This package uses your <code>Access Token</code> and
<code>spotifyr</code> to pull the last songs you have played on Spotfiy
and give you a visual of how popular each song is based on Spotify’s
current records.

## Usage

There is one function currently live for popularplay.

To use, the user must enter the following code, inserting their
<code>Client ID</code>, <code>Client Secret</code> where appropriate:

``` setup
PopularPlays("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
```

When you run the code, you will be asked if you want to: "Use a local
file (‘.httr-oauth’), to cache 0Auth access credentials between R
sessions? 1. Yes 2. No

In your console, enter the following code when prompted:

``` prompt1
Selection: 1
```

You will then be asked to: “Enter an item from the menu, or 0 to exit”
In your console, enter the following code when prompted:

``` prompt2
Selection: 0
```

You will then see a bar graph of the Last 20 Songs Played by Popularity.
The y-axis is the title of the last 20 songs you have played. The X-Axis
is a sccale of popularity based on Spotify’s current records from
0-100(0 being least popular, 100 being most popular. You can compare
each song’s popularity by looking at the length and color of the bars.
The lighter the green, the more popular. The darker the green, the less
popular.

From this graph, you can learn about your listening habits. If you tend
listen to new releases from big artists, or the top charts playlists
that Spotify offers, your bar graph may be consistently long on the
x-axis. If you tend to listen to older music, the popularity scores of
your songs may be consistently lower. If you listen to both spectrums,
your bars may be sporadic in popularity.
