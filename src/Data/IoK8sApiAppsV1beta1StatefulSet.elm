{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1StatefulSet exposing (IoK8sApiAppsV1beta1StatefulSet, ioK8sApiAppsV1beta1StatefulSetDecoder, ioK8sApiAppsV1beta1StatefulSetEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAppsV1beta1StatefulSetSpec exposing (IoK8sApiAppsV1beta1StatefulSetSpec, ioK8sApiAppsV1beta1StatefulSetSpecDecoder, ioK8sApiAppsV1beta1StatefulSetSpecEncoder)
import Data.IoK8sApiAppsV1beta1StatefulSetStatus exposing (IoK8sApiAppsV1beta1StatefulSetStatus, ioK8sApiAppsV1beta1StatefulSetStatusDecoder, ioK8sApiAppsV1beta1StatefulSetStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED - This group version of StatefulSet is deprecated by apps/v1beta2/StatefulSet. See the release notes for more information. StatefulSet represents a set of pods with consistent identities. Identities are defined as:  - Network: A single stable DNS and hostname.  - Storage: As many VolumeClaims as requested. The StatefulSet guarantees that a given network identity will always map to the same storage identity.
-}


type alias IoK8sApiAppsV1beta1StatefulSet =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiAppsV1beta1StatefulSetSpec
    , status : Maybe IoK8sApiAppsV1beta1StatefulSetStatus
    }


ioK8sApiAppsV1beta1StatefulSetDecoder : Decoder IoK8sApiAppsV1beta1StatefulSet
ioK8sApiAppsV1beta1StatefulSetDecoder =
    decode IoK8sApiAppsV1beta1StatefulSet
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiAppsV1beta1StatefulSetSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiAppsV1beta1StatefulSetStatusDecoder) Nothing



ioK8sApiAppsV1beta1StatefulSetEncoder : IoK8sApiAppsV1beta1StatefulSet -> Encode.Value
ioK8sApiAppsV1beta1StatefulSetEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiAppsV1beta1StatefulSetSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiAppsV1beta1StatefulSetStatusEncoder model.status) )
        ]

