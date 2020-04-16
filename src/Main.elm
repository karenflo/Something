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

-- Our models consists of a our player and current inputs
type alias Model =
  { player : Entity
  , inputs : [Key]
  }

-- A Key pressed by the player
type Key
  = Up
  | Down
  | Left
  | Right

-- An Entity has a position
type alias Entity = 
  { position : Point
  }

-- A Point has an x and a y corrdnate
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
  -- TODO 2020.04.15 (RP) - Write the update, one we have a more solid understaning on the langauge

-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Time.every 1000 Tick
  -- TODO 2020.04.15 (RP) - Tick rate maybe 60 times a second



-- VIEW


view : Model -> Html Msg
view model = 
  -- TODO 2020.04.15 (RP) - Render the model, need to learn elm html and elm svg
