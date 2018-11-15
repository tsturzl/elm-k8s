{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta1MetricStatus exposing (IoK8sApiAutoscalingV2beta1MetricStatus, ioK8sApiAutoscalingV2beta1MetricStatusDecoder, ioK8sApiAutoscalingV2beta1MetricStatusEncoder)

import Data.IoK8sApiAutoscalingV2beta1ExternalMetricStatus exposing (IoK8sApiAutoscalingV2beta1ExternalMetricStatus, ioK8sApiAutoscalingV2beta1ExternalMetricStatusDecoder, ioK8sApiAutoscalingV2beta1ExternalMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta1ObjectMetricStatus exposing (IoK8sApiAutoscalingV2beta1ObjectMetricStatus, ioK8sApiAutoscalingV2beta1ObjectMetricStatusDecoder, ioK8sApiAutoscalingV2beta1ObjectMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta1PodsMetricStatus exposing (IoK8sApiAutoscalingV2beta1PodsMetricStatus, ioK8sApiAutoscalingV2beta1PodsMetricStatusDecoder, ioK8sApiAutoscalingV2beta1PodsMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta1ResourceMetricStatus exposing (IoK8sApiAutoscalingV2beta1ResourceMetricStatus, ioK8sApiAutoscalingV2beta1ResourceMetricStatusDecoder, ioK8sApiAutoscalingV2beta1ResourceMetricStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MetricStatus describes the last-read state of a single metric.
-}


type alias IoK8sApiAutoscalingV2beta1MetricStatus =
    { external : Maybe IoK8sApiAutoscalingV2beta1ExternalMetricStatus
    , object : Maybe IoK8sApiAutoscalingV2beta1ObjectMetricStatus
    , pods : Maybe IoK8sApiAutoscalingV2beta1PodsMetricStatus
    , resource : Maybe IoK8sApiAutoscalingV2beta1ResourceMetricStatus
    , type_ : String
    }


ioK8sApiAutoscalingV2beta1MetricStatusDecoder : Decoder IoK8sApiAutoscalingV2beta1MetricStatus
ioK8sApiAutoscalingV2beta1MetricStatusDecoder =
    decode IoK8sApiAutoscalingV2beta1MetricStatus
        |> optional "external" (Decode.nullable ioK8sApiAutoscalingV2beta1ExternalMetricStatusDecoder) Nothing
        |> optional "object" (Decode.nullable ioK8sApiAutoscalingV2beta1ObjectMetricStatusDecoder) Nothing
        |> optional "pods" (Decode.nullable ioK8sApiAutoscalingV2beta1PodsMetricStatusDecoder) Nothing
        |> optional "resource" (Decode.nullable ioK8sApiAutoscalingV2beta1ResourceMetricStatusDecoder) Nothing
        |> required "type" Decode.string



ioK8sApiAutoscalingV2beta1MetricStatusEncoder : IoK8sApiAutoscalingV2beta1MetricStatus -> Encode.Value
ioK8sApiAutoscalingV2beta1MetricStatusEncoder model =
    Encode.object
        [ ( "external", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ExternalMetricStatusEncoder model.external) )
        , ( "object", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ObjectMetricStatusEncoder model.object) )
        , ( "pods", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1PodsMetricStatusEncoder model.pods) )
        , ( "resource", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ResourceMetricStatusEncoder model.resource) )
        , ( "type", Encode.string model.type_ )
        ]


