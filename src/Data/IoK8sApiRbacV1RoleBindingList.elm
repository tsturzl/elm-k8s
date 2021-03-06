{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiRbacV1RoleBindingList exposing (IoK8sApiRbacV1RoleBindingList, ioK8sApiRbacV1RoleBindingListDecoder, ioK8sApiRbacV1RoleBindingListEncoder)

import Data.IoK8sApiRbacV1RoleBinding exposing (IoK8sApiRbacV1RoleBinding, ioK8sApiRbacV1RoleBindingDecoder, ioK8sApiRbacV1RoleBindingEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   RoleBindingList is a collection of RoleBindings
-}


type alias IoK8sApiRbacV1RoleBindingList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiRbacV1RoleBinding)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiRbacV1RoleBindingListDecoder : Decoder IoK8sApiRbacV1RoleBindingList
ioK8sApiRbacV1RoleBindingListDecoder =
    decode IoK8sApiRbacV1RoleBindingList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiRbacV1RoleBindingDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiRbacV1RoleBindingListEncoder : IoK8sApiRbacV1RoleBindingList -> Encode.Value
ioK8sApiRbacV1RoleBindingListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiRbacV1RoleBindingEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


