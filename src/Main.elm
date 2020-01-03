module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

main =
    div []
    [
        object [ type_ "image/svg+xml", attribute "data" "src/images/logo.svg" ] []
    ]