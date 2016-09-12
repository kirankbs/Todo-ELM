module Views.FilterItemView exposing (..)

import Model exposing (..)
import Todo.TodoUnionTypes exposing (..)
import Msg exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)



filterItemView : Model -> FilterState -> Html Msg
filterItemView model filterState =
    li [] 
        [ a 
            [ classList [("selected", (model.filter == filterState) )]
            , href "#"
            ] 
            [ text (toString filterState)]
        ]