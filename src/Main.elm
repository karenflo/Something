-- Show an analog clock for your time zone.
--
-- Dependencies:
--   elm install elm/svg
--   elm install elm/time
--
-- For a simpler version, check out:
--   https://elm-lang.org/examples/time
--

import Browser
import Html exposing (Html)
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Task
import Time



-- MAIN


main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { player : Entity
  , inputs : [Key]
  }

type Key 
  = Up 
  | Down
  | Left
  | Right

type alias Entity = 
  { position : Point
  }

type alias Point = 
  { x : Int
  , y : Int
  }

initPlayer = Entity (Point 500 800)

init : () -> (Model, Cmd Msg)
init _ =
  ( Model initPlayer []
  , Cmd.none
  )



-- UPDATE

type 

type alias Msg = 
  { 
  }



update : Msg -> Model -> (Model, Cmd Msg)
update msg model =

-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Time.every 1000 Tick



-- VIEW


view : Model -> Html Msg
view model =
