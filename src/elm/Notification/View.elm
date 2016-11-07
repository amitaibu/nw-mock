module Notification.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Notification.Model exposing (..)


type alias Model =
    Notification


view : Model -> Html msg
view model =
    div [] []
