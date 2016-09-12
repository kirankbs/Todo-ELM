module Todo.TodoView exposing (..)

import Todo.Todo exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onCheck)
import Msg exposing (..)



todoView : Todo -> Html Msg
todoView todo =
    let
        handleComplete =
            case todo.completed of
                True -> (\checked -> Uncomplete todo)
                False -> (\unChecked -> Complete todo)
    in
    li [ classList [ ( "completed", todo.completed ) ] ]
        [ div [ class "view" ]
            [ input 
                [ class "toggle"
                , type' "checkbox"
                , checked todo.completed 
                , onCheck handleComplete
            ] []
            , label [] [ text todo.title ]
            , button [ class "destroy" ] []
            ]
        ]