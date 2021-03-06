{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus exposing (IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusDecoder, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusEncoder)

import Data.IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerCondition exposing (IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerCondition, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerConditionDecoder, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerConditionEncoder)
import Data.IoK8sApiAutoscalingV2beta1MetricStatus exposing (IoK8sApiAutoscalingV2beta1MetricStatus, ioK8sApiAutoscalingV2beta1MetricStatusDecoder, ioK8sApiAutoscalingV2beta1MetricStatusEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
-}


type alias IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus =
    { conditions : (List IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerCondition)
    , currentMetrics : Maybe (List IoK8sApiAutoscalingV2beta1MetricStatus)
    , currentReplicas : Int
    , desiredReplicas : Int
    , lastScaleTime : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , observedGeneration : Maybe Int
    }


ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusDecoder : Decoder IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus
ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusDecoder =
    decode IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus
        |> required "conditions" (Decode.list ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerConditionDecoder)
        |> optional "currentMetrics" (Decode.nullable (Decode.list ioK8sApiAutoscalingV2beta1MetricStatusDecoder)) Nothing
        |> required "currentReplicas" Decode.int
        |> required "desiredReplicas" Decode.int
        |> optional "lastScaleTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing



ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusEncoder : IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatus -> Encode.Value
ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerStatusEncoder model =
    Encode.object
        [ ( "conditions", (Encode.list << List.map ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerConditionEncoder) model.conditions )
        , ( "currentMetrics", withDefault Encode.null (map (Encode.list << List.map ioK8sApiAutoscalingV2beta1MetricStatusEncoder) model.currentMetrics) )
        , ( "currentReplicas", Encode.int model.currentReplicas )
        , ( "desiredReplicas", Encode.int model.desiredReplicas )
        , ( "lastScaleTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastScaleTime) )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        ]


