module App.Model exposing (emptyModel, Model, Page(..))

import Config.Model exposing (Model)
import RemoteData exposing (RemoteData(..), WebData)
import User.Model exposing (..)
import Pages.Notifications.Model exposing (emptyModel, Model)
import Pages.Login.Model exposing (emptyModel, Model)


type Page
    = AccessDenied
    | Notifications
    | Login
    | MyAccount
    | PageNotFound


type alias Model =
    { activePage : Page
    , config : RemoteData String Config.Model.Model
    , pageNotifications : Pages.Notifications.Model.Model
    , pageLogin : Pages.Login.Model.Model
    , user : WebData User
    }


emptyModel : Model
emptyModel =
    { activePage = Notifications
    , config = NotAsked
    , pageNotifications = Pages.Notifications.Model.emptyModel
    , pageLogin = Pages.Login.Model.emptyModel
    , user = NotAsked
    }
