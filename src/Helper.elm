module Helper exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- Record Exercises
-- Exercise 1.0


type alias Languajes =
    { name : String, releaseYear : Int, currentVersion : String }


langs : List Languajes
langs =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19"
      }
    , { name = "JavaScript"
      , releaseYear = 1998
      , currentVersion = "ES2025"
      }
    ]


languageNames : List Languajes -> List String
languageNames list =
    List.map .name list



-- Exercise 2.0


type alias User =
    { name : String, uType : String }


users : List User
users =
    [ { name = "Polo"
      , uType = "Student"
      }
    , { name = "Mitsiu"
      , uType = "Professor"
      }
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



-- Aliases exercise
-- Exercise 3.0


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Gta V"
      , releaseYear = 2013
      , available = True
      , downloads = 90000000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Red dead redemption"
      , releaseYear = 2010
      , available = True
      , downloads = 20000000000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres listVideogames =
    List.map .genres listVideogames



-- Html exercise


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "Victus"
    , brand = "HP"
    , screenSize = "HD"
    }


viewLaptops : Computer -> Html msg
viewLaptops pc =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ pc.ram) ]
                , li [] [ text ("Modelo: " ++ pc.model) ]
                , li [] [ text ("Marca: " ++ pc.brand) ]
                , li [] [ text ("Pulgadas: " ++ pc.screenSize) ]
                ]
            ]
        ]


main : Html msg
main =
    viewLaptops myLaptop
