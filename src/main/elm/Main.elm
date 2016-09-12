module Main exposing (..)


import Views.View exposing (..)
import Todo.Todo exposing (..)
import Todo.TodoUnionTypes exposing (..)
import Msg exposing (..)
import Model exposing (..)
import Update exposing (..)
import Html.App as App


initialModel =
    { todos = 
        [
            { title = "The First Todo"
            , completed = False
            , editing = False
            , identifier = 1
            }
        ]
    , todo = { newTodo | identifier = 2}
    , filter = All
    , nextIdentifier = 3
    }
    

main =
    App.beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }


