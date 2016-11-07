module Notification.Model exposing (..)


type NotificationBundle
    = NotifyNonResponsive
    | NotifyHighConsumption


type alias Notification =
    { id : Int
    , bundle : NotificationBundle
    }
