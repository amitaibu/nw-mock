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
    { bundle : NotificationBundle
    , status : NotificationStatus
    }
