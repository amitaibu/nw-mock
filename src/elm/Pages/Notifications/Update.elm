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
                        notification_ =
                            { notification | status = status }

                        notifications_ =
                            Dict.insert notificationId notification_ model.notifications
                    in
                        { model | notifications = notifications_ } ! []
