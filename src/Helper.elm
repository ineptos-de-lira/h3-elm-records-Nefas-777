module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List Language
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List Language -> List String
languageNames list =
    List.map .name list


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 1000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 7600000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.3"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Int -> Int -> Int -> Int
add3 x y z =
    x + y + z
