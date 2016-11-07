module Pages.Notifications.Model exposing (emptyModel, Model)

import Dict exposing (..)
import Notification.Model exposing (Notification, NotificationBundle(..), NotificationId, NotificationStatus(..))


type alias Model =
    { notifications : Dict NotificationId Notification }


emptyModel : Model
emptyModel =
    { notifications =
        Dict.fromList
            [ ( 1
              , { id = 1
                , bundle = NotifyNonResponsive
                , status = NotificationStatusActive
                }
              )
            ]
    }
