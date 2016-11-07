module Notification.Model exposing (..)


type alias NotificationId =
    Int


type NotificationBundle
    = NotifyHighConsumption
    | NotifyNonResponsive


type NotificationStatus
    = NotificationStatusActive
    | NotificationStatusDismissed


type alias Notification =
    { id : Int
    , bundle : NotificationBundle
    , status : NotificationStatus
    }
