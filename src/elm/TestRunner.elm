module Main exposing (..)

import App.Test as App exposing (..)
import Pages.Login.Test as Login exposing (..)
import Test exposing (..)
import Test.Runner.Html


main : Program Never
main =
    [ App.all
    , Login.all
    ]
        |> concat
        |> Test.Runner.Html.run
