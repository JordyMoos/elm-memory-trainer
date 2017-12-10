module Data.Config exposing (..)

import Data.Question as Question
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline as Pipeline exposing (decode, required)


type alias Config =
    { questions : List Question.Question }


decoder : Decoder Config
decoder =
    decode Config
        |> required "questions" Question.listDecoder
