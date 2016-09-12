module Model exposing (..)
import Todo.Todo exposing (..)
import Todo.TodoUnionTypes exposing (..)


type alias Model =
    { todos : List Todo
    , todo : Todo
    , filter : FilterState
    , nextIdentifier : Int
    }
