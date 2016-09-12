module Update exposing (..)

import Msg exposing (..)
import Model exposing (..)
import Todo.Todo exposing (..)





update : Msg -> Model -> Model
update msg model =
    case msg of
        Add ->
            { model | todos = addTodo model.todo model.todos
            , todo = { newTodo | identifier = model.nextIdentifier }
            , nextIdentifier = model.nextIdentifier + 1}
        Complete todo ->
            let
                updateTodo thisTodo =
                    if thisTodo.identifier == todo.identifier then
                        { todo | completed = True}
                    else
                        thisTodo
            in
                { model
                | todos = List.map updateTodo model.todos
                }
        Uncomplete todo ->
            let
                updateTodo thisTodo =
                    if thisTodo.identifier == todo.identifier then
                        { thisTodo | completed = False}
                    else
                        thisTodo
            in
                { model
                | todos = List.map updateTodo model.todos
                }
        Delete todo ->
            model
        UpdateField str ->
            let
                todo = model.todo
                updatedTodo = { todo | title = str }
            in
                { model | todo = updatedTodo }

        Filter filterState ->
            model