module Msg exposing (..)

import Todo.TodoUnionTypes exposing (..)
import Todo.Todo exposing (..)

type Msg
    = Add
    | Complete Todo
    | Uncomplete Todo
    | Delete Todo
    | UpdateField String
    | Filter FilterState