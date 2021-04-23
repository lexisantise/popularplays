#' Last 20 Songs Played by Popularity
#'
#' Function pulls data from an inputted Spotify Access Token and returns a
#' bar graph breaking down the popularity of each song,
#' 100 being the most popular, 0 being the least.
#'
#' The function shows a breakdown of the popularity of the last 20 songs
#' played by the user. 100 being the most popular, 0 being the least popular.
#'
#' @author Alexis Santise
#'
#' @param ClientID Given from Spotify
#' @param ClientSecret Given from Spotify
#'
#' @return Bar graph of popularity breakdown of last songs played
#'
#' @examples
#' PopularPlays("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
#' "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
#'
#' @export
PopularPlays = function(clientID = "",
                        clientSecret = "") {

  # Create objects that creates Client ID and clientSecret inputs
  ID_input = Sys.setenv(SPOTIFY_CLIENT_ID = clientID)
  Secret_input = Sys.setenv(SPOTIFY_CLIENT_SECRET = clientSecret)

  # Create access token
  access_token = spotifyr::get_spotify_access_token()

  # Pull the last 20 recently played songs
  lastplayed = spotifyr::get_my_recently_played()

  # Select track name and track popularity column
  important_columns = dplyr::select(lastplayed, track.name, track.popularity)

  # Remove all duplicates
  important_columns1 = unique(important_columns, incomparables = FALSE)

  # Arrange the last 20 played songs by popularity
  ranked = dplyr::arrange(important_columns1, desc(track.popularity))

  #Create bar graph of last 20 songs by popularity
  ggplot2::ggplot(ranked) +
    ggplot2::aes(x = track.name, fill = track.popularity, weight = track.popularity) +
    ggplot2::geom_bar() +
    ggplot2::scale_fill_distiller(palette = "Greens") +
    ggplot2::labs(x = "Song Title", y = "Popularity", title = "Last 20 Songs Played by Popularity") +
    ggplot2::coord_flip() +
    ggplot2::theme_minimal() +
    ggplot2::theme(legend.position = "top")
}
