module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)

-- MAIN

main =
    Browser.sandbox {
        init = init,
        update = update,
        view = view
    }

-- MODEL

type alias Model = { }

init : Model
init = { }

-- UPDATE

type Msg
    = Message

update : Msg -> Model -> Model
update msg model =
    case msg of
        Message ->
            { }

-- VIEW

view : Model -> Html Msg
view model =
    div []
    [
        object [ type_ "image/svg+xml", attribute "data" "src/images/logo.svg" ] []
    ]