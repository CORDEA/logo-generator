module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes as A exposing (..)
import Html.Events exposing (onInput)

-- MAIN

main =
    Browser.sandbox {
        init = init,
        update = update,
        view = view
    }

-- MODEL

type alias Model =
    { background : String
    }

init : Model
init = { background = "" }

-- UPDATE

type Msg
    = ChangeBackground String

update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeBackground x ->
            { model | background = x }

-- VIEW

view : Model -> Html Msg
view model =
    div []
    [
        object [ type_ "image/svg+xml", A.attribute "data" "src/images/logo.svg" ] [],
        div []
        [
            input [ value model.background, onInput ChangeBackground ] []
        ]
    ]