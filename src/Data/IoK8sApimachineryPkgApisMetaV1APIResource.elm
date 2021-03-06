{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1APIResource exposing (IoK8sApimachineryPkgApisMetaV1APIResource, ioK8sApimachineryPkgApisMetaV1APIResourceDecoder, ioK8sApimachineryPkgApisMetaV1APIResourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   APIResource specifies the name of a resource and whether it is namespaced.
-}


type alias IoK8sApimachineryPkgApisMetaV1APIResource =
    { categories : Maybe (List String)
    , group : Maybe String
    , kind : String
    , name : String
    , namespaced : Bool
    , shortNames : Maybe (List String)
    , singularName : String
    , verbs : (List String)
    , version : Maybe String
    }


ioK8sApimachineryPkgApisMetaV1APIResourceDecoder : Decoder IoK8sApimachineryPkgApisMetaV1APIResource
ioK8sApimachineryPkgApisMetaV1APIResourceDecoder =
    decode IoK8sApimachineryPkgApisMetaV1APIResource
        |> optional "categories" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "group" (Decode.nullable Decode.string) Nothing
        |> required "kind" Decode.string
        |> required "name" Decode.string
        |> required "namespaced" Decode.bool
        |> optional "shortNames" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> required "singularName" Decode.string
        |> required "verbs" (Decode.list Decode.string)
        |> optional "version" (Decode.nullable Decode.string) Nothing



ioK8sApimachineryPkgApisMetaV1APIResourceEncoder : IoK8sApimachineryPkgApisMetaV1APIResource -> Encode.Value
ioK8sApimachineryPkgApisMetaV1APIResourceEncoder model =
    Encode.object
        [ ( "categories", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.categories) )
        , ( "group", withDefault Encode.null (map Encode.string model.group) )
        , ( "kind", Encode.string model.kind )
        , ( "name", Encode.string model.name )
        , ( "namespaced", Encode.bool model.namespaced )
        , ( "shortNames", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.shortNames) )
        , ( "singularName", Encode.string model.singularName )
        , ( "verbs", (Encode.list << List.map Encode.string) model.verbs )
        , ( "version", withDefault Encode.null (map Encode.string model.version) )
        ]


