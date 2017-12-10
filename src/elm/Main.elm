module Main exposing (main)

import Html exposing (Html, programWithFlags)
import Data.Config as Config
import Data.Question as Question


type alias Model =
    { questions : List Question.Question }


init : Config.Config -> ( Model, Cmd Msg )
init flags =
    { questions = flags.questions } ! []


main : Program Config.Config Model Msg
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
