{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1StatefulSet exposing (IoK8sApiAppsV1StatefulSet, ioK8sApiAppsV1StatefulSetDecoder, ioK8sApiAppsV1StatefulSetEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAppsV1StatefulSetSpec exposing (IoK8sApiAppsV1StatefulSetSpec, ioK8sApiAppsV1StatefulSetSpecDecoder, ioK8sApiAppsV1StatefulSetSpecEncoder)
import Data.IoK8sApiAppsV1StatefulSetStatus exposing (IoK8sApiAppsV1StatefulSetStatus, ioK8sApiAppsV1StatefulSetStatusDecoder, ioK8sApiAppsV1StatefulSetStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   StatefulSet represents a set of pods with consistent identities. Identities are defined as:  - Network: A single stable DNS and hostname.  - Storage: As many VolumeClaims as requested. The StatefulSet guarantees that a given network identity will always map to the same storage identity.
-}


type alias IoK8sApiAppsV1StatefulSet =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiAppsV1StatefulSetSpec
    , status : Maybe IoK8sApiAppsV1StatefulSetStatus
    }


ioK8sApiAppsV1StatefulSetDecoder : Decoder IoK8sApiAppsV1StatefulSet
ioK8sApiAppsV1StatefulSetDecoder =
    decode IoK8sApiAppsV1StatefulSet
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiAppsV1StatefulSetSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiAppsV1StatefulSetStatusDecoder) Nothing



ioK8sApiAppsV1StatefulSetEncoder : IoK8sApiAppsV1StatefulSet -> Encode.Value
ioK8sApiAppsV1StatefulSetEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiAppsV1StatefulSetSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiAppsV1StatefulSetStatusEncoder model.status) )
        ]

