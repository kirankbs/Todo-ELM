module Todo.Todo exposing (..)


--Empty Todo
newTodo : Todo
newTodo =
    { title = ""
    , completed = False
    , editing = False
    , identifier = 0
    }


addTodo : Todo -> List Todo -> List Todo
addTodo todo todos=
    if todo == newTodo then todos else todo :: todos

    

type alias Todo =
    { title : String
    , completed : Bool
    , editing : Bool
    , identifier : Int
    }