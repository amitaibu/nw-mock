module Pages.Notifications.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Pages.Notifications.Model exposing (..)
import Pages.Notifications.Update exposing (..)


view : Model -> Html Msg
view model =
    div []
        []
