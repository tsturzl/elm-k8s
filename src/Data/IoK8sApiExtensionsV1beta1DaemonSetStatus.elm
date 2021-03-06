{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1DaemonSetStatus exposing (IoK8sApiExtensionsV1beta1DaemonSetStatus, ioK8sApiExtensionsV1beta1DaemonSetStatusDecoder, ioK8sApiExtensionsV1beta1DaemonSetStatusEncoder)

import Data.IoK8sApiExtensionsV1beta1DaemonSetCondition exposing (IoK8sApiExtensionsV1beta1DaemonSetCondition, ioK8sApiExtensionsV1beta1DaemonSetConditionDecoder, ioK8sApiExtensionsV1beta1DaemonSetConditionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DaemonSetStatus represents the current status of a daemon set.
-}


type alias IoK8sApiExtensionsV1beta1DaemonSetStatus =
    { collisionCount : Maybe Int
    , conditions : Maybe (List IoK8sApiExtensionsV1beta1DaemonSetCondition)
    , currentNumberScheduled : Int
    , desiredNumberScheduled : Int
    , numberAvailable : Maybe Int
    , numberMisscheduled : Int
    , numberReady : Int
    , numberUnavailable : Maybe Int
    , observedGeneration : Maybe Int
    , updatedNumberScheduled : Maybe Int
    }


ioK8sApiExtensionsV1beta1DaemonSetStatusDecoder : Decoder IoK8sApiExtensionsV1beta1DaemonSetStatus
ioK8sApiExtensionsV1beta1DaemonSetStatusDecoder =
    decode IoK8sApiExtensionsV1beta1DaemonSetStatus
        |> optional "collisionCount" (Decode.nullable Decode.int) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiExtensionsV1beta1DaemonSetConditionDecoder)) Nothing
        |> required "currentNumberScheduled" Decode.int
        |> required "desiredNumberScheduled" Decode.int
        |> optional "numberAvailable" (Decode.nullable Decode.int) Nothing
        |> required "numberMisscheduled" Decode.int
        |> required "numberReady" Decode.int
        |> optional "numberUnavailable" (Decode.nullable Decode.int) Nothing
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing
        |> optional "updatedNumberScheduled" (Decode.nullable Decode.int) Nothing



ioK8sApiExtensionsV1beta1DaemonSetStatusEncoder : IoK8sApiExtensionsV1beta1DaemonSetStatus -> Encode.Value
ioK8sApiExtensionsV1beta1DaemonSetStatusEncoder model =
    Encode.object
        [ ( "collisionCount", withDefault Encode.null (map Encode.int model.collisionCount) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiExtensionsV1beta1DaemonSetConditionEncoder) model.conditions) )
        , ( "currentNumberScheduled", Encode.int model.currentNumberScheduled )
        , ( "desiredNumberScheduled", Encode.int model.desiredNumberScheduled )
        , ( "numberAvailable", withDefault Encode.null (map Encode.int model.numberAvailable) )
        , ( "numberMisscheduled", Encode.int model.numberMisscheduled )
        , ( "numberReady", Encode.int model.numberReady )
        , ( "numberUnavailable", withDefault Encode.null (map Encode.int model.numberUnavailable) )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        , ( "updatedNumberScheduled", withDefault Encode.null (map Encode.int model.updatedNumberScheduled) )
        ]


