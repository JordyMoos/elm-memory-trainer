module Data.Question exposing (..)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline as Pipeline exposing (decode, required)


type alias Question =
    { image : String
    , answer : String
    }


listDecoder : Decoder (List Question)
listDecoder =
    Decode.list decoder


decoder : Decoder Question
decoder =
    decode Question
        |> required "image" Decode.string
        |> required "answer" Decode.string
