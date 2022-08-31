port module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (..)

main =   Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


port color : String -> Cmd msg

type alias Model = 
    {num1 : Int}


init: () -> (Model, Cmd Msg)
init _ = (Model 0, Cmd.none)



type Msg =
    Red


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Red ->
           (Model 0, color "red")


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

view : Model -> Html Msg
view model =
    div [] [
    h1 [] [text "output"]
    , button [onClick Red] [text "click Me"]
    ]
    