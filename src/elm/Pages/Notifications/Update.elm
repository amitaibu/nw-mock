module Pages.Notifications.Update exposing (update, Msg(..))

import Dict exposing (..)
import Notification.Model exposing (NotificationId, NotificationStatus(..))
import Pages.Notifications.Model exposing (..)


type Msg
    = SetNotificationStatus NotificationId NotificationStatus


update : Msg -> Model -> ( Model, Cmd Msg )
update action model =
    case action of
        SetNotificationStatus notificationId status ->
            case Dict.get notificationId model.notifications of
                Nothing ->
                    model ! []

                Just notification ->
                    let
                        notification' =
                            { notification | status = status }

                        notifications' =
                            Dict.insert notificationId notification' model.notifications
                    in
                        { model | notifications = notifications' } ! []
