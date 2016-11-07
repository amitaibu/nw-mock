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
              , { bundle = NotifyNonResponsive
                , name = Just "Kitchen"
                , status = NotificationStatusActive
                }
              )
            , ( 2
              , { bundle = NotifyHighConsumption
                , name = Just "School Yard"
                , status = NotificationStatusActive
                }
              )
            ]
    }
