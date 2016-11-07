module Notification.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Notification.Model exposing (..)


type alias Model =
    Notification


view : NotificationId -> Model -> Html msg
view notificationId model =
    case model.bundle of
        NotifyHighConsumption ->
            viewNotifyHighConsumption notificationId model

        NotifyNonResponsive ->
            viewNotifyNonResponsive notificationId model


viewNotifyHighConsumption : NotificationId -> Model -> Html msg
viewNotifyHighConsumption notificationId model =
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
                [ text "Tel-Aviv" ]
            , div
                [ class "meta" ]
                [ span
                    [ class "date" ]
                    [ text "Notification opened 1 day and 2 hours ago" ]
                ]
            , div
                [ class "description" ]
                [ p
                    []
                    [ text "I see elevated energy consumption in the school yard. It's the"
                    , a [ href "#" ] [ text "holidays" ]
                    , text ", so it shouldn't be so high."
                    ]
                , p
                    []
                    [ text "I have compared my data with the previous year, and there's about 20% increase (see the"
                    , a [ href "#" ] [ text "comparison graph" ]
                    , text ")."
                    ]
                ]
            ]
        , div
            [ class "extra content" ]
            [ div
                [ class "description" ]
                [ p
                    []
                    [ i
                        [ class "warning sign icon" ]
                        []
                    , text "Next Automatic Action: If it reaches 30%, I'll send an SMS to"
                    , a
                        [ href "#" ]
                        [ text "Mr. Bob Azulay" ]
                    , text ", unless you tell me otherwise."
                    ]
                , button
                    [ class "ui button" ]
                    [ text "Dismiss it?" ]
                ]
            ]
        ]


viewNotifyNonResponsive : NotificationId -> Model -> Html msg
viewNotifyNonResponsive notificationId model =
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
                [ text "Monitor ID "
                , a [ href "#" ] [ text <| "#" ++ toString notificationId ]
                , text " is non-responsive, do you want me to switch it off?"
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
