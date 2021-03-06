{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2MetricStatus exposing (IoK8sApiAutoscalingV2beta2MetricStatus, ioK8sApiAutoscalingV2beta2MetricStatusDecoder, ioK8sApiAutoscalingV2beta2MetricStatusEncoder)

import Data.IoK8sApiAutoscalingV2beta2ExternalMetricStatus exposing (IoK8sApiAutoscalingV2beta2ExternalMetricStatus, ioK8sApiAutoscalingV2beta2ExternalMetricStatusDecoder, ioK8sApiAutoscalingV2beta2ExternalMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta2ObjectMetricStatus exposing (IoK8sApiAutoscalingV2beta2ObjectMetricStatus, ioK8sApiAutoscalingV2beta2ObjectMetricStatusDecoder, ioK8sApiAutoscalingV2beta2ObjectMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta2PodsMetricStatus exposing (IoK8sApiAutoscalingV2beta2PodsMetricStatus, ioK8sApiAutoscalingV2beta2PodsMetricStatusDecoder, ioK8sApiAutoscalingV2beta2PodsMetricStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta2ResourceMetricStatus exposing (IoK8sApiAutoscalingV2beta2ResourceMetricStatus, ioK8sApiAutoscalingV2beta2ResourceMetricStatusDecoder, ioK8sApiAutoscalingV2beta2ResourceMetricStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MetricStatus describes the last-read state of a single metric.
-}


type alias IoK8sApiAutoscalingV2beta2MetricStatus =
    { external : Maybe IoK8sApiAutoscalingV2beta2ExternalMetricStatus
    , object : Maybe IoK8sApiAutoscalingV2beta2ObjectMetricStatus
    , pods : Maybe IoK8sApiAutoscalingV2beta2PodsMetricStatus
    , resource : Maybe IoK8sApiAutoscalingV2beta2ResourceMetricStatus
    , type_ : String
    }


ioK8sApiAutoscalingV2beta2MetricStatusDecoder : Decoder IoK8sApiAutoscalingV2beta2MetricStatus
ioK8sApiAutoscalingV2beta2MetricStatusDecoder =
    decode IoK8sApiAutoscalingV2beta2MetricStatus
        |> optional "external" (Decode.nullable ioK8sApiAutoscalingV2beta2ExternalMetricStatusDecoder) Nothing
        |> optional "object" (Decode.nullable ioK8sApiAutoscalingV2beta2ObjectMetricStatusDecoder) Nothing
        |> optional "pods" (Decode.nullable ioK8sApiAutoscalingV2beta2PodsMetricStatusDecoder) Nothing
        |> optional "resource" (Decode.nullable ioK8sApiAutoscalingV2beta2ResourceMetricStatusDecoder) Nothing
        |> required "type" Decode.string



ioK8sApiAutoscalingV2beta2MetricStatusEncoder : IoK8sApiAutoscalingV2beta2MetricStatus -> Encode.Value
ioK8sApiAutoscalingV2beta2MetricStatusEncoder model =
    Encode.object
        [ ( "external", withDefault Encode.null (map ioK8sApiAutoscalingV2beta2ExternalMetricStatusEncoder model.external) )
        , ( "object", withDefault Encode.null (map ioK8sApiAutoscalingV2beta2ObjectMetricStatusEncoder model.object) )
        , ( "pods", withDefault Encode.null (map ioK8sApiAutoscalingV2beta2PodsMetricStatusEncoder model.pods) )
        , ( "resource", withDefault Encode.null (map ioK8sApiAutoscalingV2beta2ResourceMetricStatusEncoder model.resource) )
        , ( "type", Encode.string model.type_ )
        ]


