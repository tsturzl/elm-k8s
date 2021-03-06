{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiStorageV1StorageClassList exposing (IoK8sApiStorageV1StorageClassList, ioK8sApiStorageV1StorageClassListDecoder, ioK8sApiStorageV1StorageClassListEncoder)

import Data.IoK8sApiStorageV1StorageClass exposing (IoK8sApiStorageV1StorageClass, ioK8sApiStorageV1StorageClassDecoder, ioK8sApiStorageV1StorageClassEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   StorageClassList is a collection of storage classes.
-}


type alias IoK8sApiStorageV1StorageClassList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiStorageV1StorageClass)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiStorageV1StorageClassListDecoder : Decoder IoK8sApiStorageV1StorageClassList
ioK8sApiStorageV1StorageClassListDecoder =
    decode IoK8sApiStorageV1StorageClassList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiStorageV1StorageClassDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiStorageV1StorageClassListEncoder : IoK8sApiStorageV1StorageClassList -> Encode.Value
ioK8sApiStorageV1StorageClassListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiStorageV1StorageClassEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


