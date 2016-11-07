module Notification.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Notification.Model exposing (..)


type alias Model =
    Notification


view : Model -> Html msg
view model =
    case model.bundle of
        NotifyHighConsumption ->
            viewNotifyHighConsumption model

        NotifyNonResponsive ->
            viewNotifyNonResponsive model


viewNotifyHighConsumption : Model -> Html msg
viewNotifyHighConsumption model =
    div [] []


viewNotifyNonResponsive : Model -> Html msg
viewNotifyNonResponsive model =
    div
        [ class "ui card" ]
        [ div
            [ class "image" ]
            [ img
                [ src "http://placehold.it/350x150" ]
                []
            ]
        , div
            [ class "content" ]
            [ a
                [ class "header" ]
                [ text "Jerusalem" ]
            , div
                [ class "meta" ]
                [ span
                    [ class "date" ]
                    [ text "Notification opened 5 minutes ago" ]
                ]
            , div
                [ class "description" ]
                [ text "Monitor ID"
                , a [ href "#" ] [ text "#0065" ]
                , text "is non-responsive, do you want me to switch it off?"
                ]
            ]
        , div
            [ class "extra content" ]
            [ div
                [ class "ui two buttons" ]
                [ div
                    [ class "ui basic green button" ]
                    [ text "Yes, switch it off" ]
                , div
                    [ class "ui basic red button" ]
                    [ text "No, keep it on" ]
                ]
            ]
        ]
