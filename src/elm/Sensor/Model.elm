module Sensor.Model exposing (..)

-- MODEL


type SensorStatus
    = SensorEnabled
    | SensorDisabled
    | SensorNonResponive


type alias Sensor =
    { id : String
    , status : SensorStatus
    }
