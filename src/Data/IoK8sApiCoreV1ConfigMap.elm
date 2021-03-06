{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ConfigMap exposing (IoK8sApiCoreV1ConfigMap, ioK8sApiCoreV1ConfigMapDecoder, ioK8sApiCoreV1ConfigMapEncoder)

import Byte exposing (Byte, byteDecoder, byteEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ConfigMap holds configuration data for pods to consume.
-}


type alias IoK8sApiCoreV1ConfigMap =
    { apiVersion : Maybe String
    , binaryData : Maybe (List Byte)
    , data : Maybe (List String)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    }


ioK8sApiCoreV1ConfigMapDecoder : Decoder IoK8sApiCoreV1ConfigMap
ioK8sApiCoreV1ConfigMapDecoder =
    decode IoK8sApiCoreV1ConfigMap
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "binaryData" (Decode.nullable (Decode.list byteDecoder)) Nothing
        |> optional "data" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing



ioK8sApiCoreV1ConfigMapEncoder : IoK8sApiCoreV1ConfigMap -> Encode.Value
ioK8sApiCoreV1ConfigMapEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "binaryData", withDefault Encode.null (map (Encode.list << List.map byteEncoder) model.binaryData) )
        , ( "data", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.data) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        ]


