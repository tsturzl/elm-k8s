{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1DaemonSetStatus exposing (IoK8sApiAppsV1DaemonSetStatus, ioK8sApiAppsV1DaemonSetStatusDecoder, ioK8sApiAppsV1DaemonSetStatusEncoder)

import Data.IoK8sApiAppsV1DaemonSetCondition exposing (IoK8sApiAppsV1DaemonSetCondition, ioK8sApiAppsV1DaemonSetConditionDecoder, ioK8sApiAppsV1DaemonSetConditionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DaemonSetStatus represents the current status of a daemon set.
-}


type alias IoK8sApiAppsV1DaemonSetStatus =
    { collisionCount : Maybe Int
    , conditions : Maybe (List IoK8sApiAppsV1DaemonSetCondition)
    , currentNumberScheduled : Int
    , desiredNumberScheduled : Int
    , numberAvailable : Maybe Int
    , numberMisscheduled : Int
    , numberReady : Int
    , numberUnavailable : Maybe Int
    , observedGeneration : Maybe Int
    , updatedNumberScheduled : Maybe Int
    }


ioK8sApiAppsV1DaemonSetStatusDecoder : Decoder IoK8sApiAppsV1DaemonSetStatus
ioK8sApiAppsV1DaemonSetStatusDecoder =
    decode IoK8sApiAppsV1DaemonSetStatus
        |> optional "collisionCount" (Decode.nullable Decode.int) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiAppsV1DaemonSetConditionDecoder)) Nothing
        |> required "currentNumberScheduled" Decode.int
        |> required "desiredNumberScheduled" Decode.int
        |> optional "numberAvailable" (Decode.nullable Decode.int) Nothing
        |> required "numberMisscheduled" Decode.int
        |> required "numberReady" Decode.int
        |> optional "numberUnavailable" (Decode.nullable Decode.int) Nothing
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing
        |> optional "updatedNumberScheduled" (Decode.nullable Decode.int) Nothing



ioK8sApiAppsV1DaemonSetStatusEncoder : IoK8sApiAppsV1DaemonSetStatus -> Encode.Value
ioK8sApiAppsV1DaemonSetStatusEncoder model =
    Encode.object
        [ ( "collisionCount", withDefault Encode.null (map Encode.int model.collisionCount) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiAppsV1DaemonSetConditionEncoder) model.conditions) )
        , ( "currentNumberScheduled", Encode.int model.currentNumberScheduled )
        , ( "desiredNumberScheduled", Encode.int model.desiredNumberScheduled )
        , ( "numberAvailable", withDefault Encode.null (map Encode.int model.numberAvailable) )
        , ( "numberMisscheduled", Encode.int model.numberMisscheduled )
        , ( "numberReady", Encode.int model.numberReady )
        , ( "numberUnavailable", withDefault Encode.null (map Encode.int model.numberUnavailable) )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        , ( "updatedNumberScheduled", withDefault Encode.null (map Encode.int model.updatedNumberScheduled) )
        ]


