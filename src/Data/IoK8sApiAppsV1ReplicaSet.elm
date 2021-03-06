{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1ReplicaSet exposing (IoK8sApiAppsV1ReplicaSet, ioK8sApiAppsV1ReplicaSetDecoder, ioK8sApiAppsV1ReplicaSetEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAppsV1ReplicaSetSpec exposing (IoK8sApiAppsV1ReplicaSetSpec, ioK8sApiAppsV1ReplicaSetSpecDecoder, ioK8sApiAppsV1ReplicaSetSpecEncoder)
import Data.IoK8sApiAppsV1ReplicaSetStatus exposing (IoK8sApiAppsV1ReplicaSetStatus, ioK8sApiAppsV1ReplicaSetStatusDecoder, ioK8sApiAppsV1ReplicaSetStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ReplicaSet ensures that a specified number of pod replicas are running at any given time.
-}


type alias IoK8sApiAppsV1ReplicaSet =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiAppsV1ReplicaSetSpec
    , status : Maybe IoK8sApiAppsV1ReplicaSetStatus
    }


ioK8sApiAppsV1ReplicaSetDecoder : Decoder IoK8sApiAppsV1ReplicaSet
ioK8sApiAppsV1ReplicaSetDecoder =
    decode IoK8sApiAppsV1ReplicaSet
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiAppsV1ReplicaSetSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiAppsV1ReplicaSetStatusDecoder) Nothing



ioK8sApiAppsV1ReplicaSetEncoder : IoK8sApiAppsV1ReplicaSet -> Encode.Value
ioK8sApiAppsV1ReplicaSetEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiAppsV1ReplicaSetSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiAppsV1ReplicaSetStatusEncoder model.status) )
        ]


