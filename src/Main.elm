module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes as A exposing (..)

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

addSlider x =
    div [] [
        text x,
        input [ type_ "range",
            A.min "0",
            A.max "255",
            value "10"
        ] []
    ]


view : Model -> Html Msg
view model =
    div []
    [
        object [ type_ "image/svg+xml", A.attribute "data" "src/images/logo.svg" ] [],
        div [] (List.concat [[text "Foreground"], List.map addSlider ["R", "G", "B", "A"]]),
        div [] (List.concat [[text "Background"], List.map addSlider ["R", "G", "B", "A"]])
    ]