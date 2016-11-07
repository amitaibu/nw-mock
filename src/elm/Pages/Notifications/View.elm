module Pages.Notifications.View exposing (view)

import Dict exposing (..)
import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Notification.View exposing (..)
import Pages.Notifications.Model exposing (..)
import Pages.Notifications.Update exposing (..)


view : Model -> Html Msg
view model =
    let
        viewNotification ( id, notification ) =
            Notification.View.view notification
    in
        div
            []
            (List.map viewNotification <| Dict.toList model.notifications)
