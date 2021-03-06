{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NamespaceList exposing (IoK8sApiCoreV1NamespaceList, ioK8sApiCoreV1NamespaceListDecoder, ioK8sApiCoreV1NamespaceListEncoder)

import Data.IoK8sApiCoreV1Namespace exposing (IoK8sApiCoreV1Namespace, ioK8sApiCoreV1NamespaceDecoder, ioK8sApiCoreV1NamespaceEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   NamespaceList is a list of Namespaces.
-}


type alias IoK8sApiCoreV1NamespaceList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiCoreV1Namespace)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiCoreV1NamespaceListDecoder : Decoder IoK8sApiCoreV1NamespaceList
ioK8sApiCoreV1NamespaceListDecoder =
    decode IoK8sApiCoreV1NamespaceList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiCoreV1NamespaceDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiCoreV1NamespaceListEncoder : IoK8sApiCoreV1NamespaceList -> Encode.Value
ioK8sApiCoreV1NamespaceListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiCoreV1NamespaceEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


