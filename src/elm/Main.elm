module Main exposing (main)

import Html exposing (Html, programWithFlags)


type alias Model =
    String


init : () -> ( Model, Cmd Msg )
init flags =
    "" ! []


main : Program () Model Msg
main =
    programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


view : Model -> Html Msg
view model =
    Html.div [] [ Html.text "hi from elm!" ]
