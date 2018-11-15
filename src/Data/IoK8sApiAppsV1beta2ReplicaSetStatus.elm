{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta2ReplicaSetStatus exposing (IoK8sApiAppsV1beta2ReplicaSetStatus, ioK8sApiAppsV1beta2ReplicaSetStatusDecoder, ioK8sApiAppsV1beta2ReplicaSetStatusEncoder)

import Data.IoK8sApiAppsV1beta2ReplicaSetCondition exposing (IoK8sApiAppsV1beta2ReplicaSetCondition, ioK8sApiAppsV1beta2ReplicaSetConditionDecoder, ioK8sApiAppsV1beta2ReplicaSetConditionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ReplicaSetStatus represents the current status of a ReplicaSet.
-}


type alias IoK8sApiAppsV1beta2ReplicaSetStatus =
    { availableReplicas : Maybe Int
    , conditions : Maybe (List IoK8sApiAppsV1beta2ReplicaSetCondition)
    , fullyLabeledReplicas : Maybe Int
    , observedGeneration : Maybe Int
    , readyReplicas : Maybe Int
    , replicas : Int
    }


ioK8sApiAppsV1beta2ReplicaSetStatusDecoder : Decoder IoK8sApiAppsV1beta2ReplicaSetStatus
ioK8sApiAppsV1beta2ReplicaSetStatusDecoder =
    decode IoK8sApiAppsV1beta2ReplicaSetStatus
        |> optional "availableReplicas" (Decode.nullable Decode.int) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiAppsV1beta2ReplicaSetConditionDecoder)) Nothing
        |> optional "fullyLabeledReplicas" (Decode.nullable Decode.int) Nothing
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing
        |> optional "readyReplicas" (Decode.nullable Decode.int) Nothing
        |> required "replicas" Decode.int



ioK8sApiAppsV1beta2ReplicaSetStatusEncoder : IoK8sApiAppsV1beta2ReplicaSetStatus -> Encode.Value
ioK8sApiAppsV1beta2ReplicaSetStatusEncoder model =
    Encode.object
        [ ( "availableReplicas", withDefault Encode.null (map Encode.int model.availableReplicas) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiAppsV1beta2ReplicaSetConditionEncoder) model.conditions) )
        , ( "fullyLabeledReplicas", withDefault Encode.null (map Encode.int model.fullyLabeledReplicas) )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        , ( "readyReplicas", withDefault Encode.null (map Encode.int model.readyReplicas) )
        , ( "replicas", Encode.int model.replicas )
        ]


