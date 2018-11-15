{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PodList exposing (IoK8sApiCoreV1PodList, ioK8sApiCoreV1PodListDecoder, ioK8sApiCoreV1PodListEncoder)

import Data.IoK8sApiCoreV1Pod exposing (IoK8sApiCoreV1Pod, ioK8sApiCoreV1PodDecoder, ioK8sApiCoreV1PodEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodList is a list of Pods.
-}


type alias IoK8sApiCoreV1PodList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiCoreV1Pod)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiCoreV1PodListDecoder : Decoder IoK8sApiCoreV1PodList
ioK8sApiCoreV1PodListDecoder =
    decode IoK8sApiCoreV1PodList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiCoreV1PodDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiCoreV1PodListEncoder : IoK8sApiCoreV1PodList -> Encode.Value
ioK8sApiCoreV1PodListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiCoreV1PodEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


