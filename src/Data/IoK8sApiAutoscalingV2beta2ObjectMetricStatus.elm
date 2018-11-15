{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2ObjectMetricStatus exposing (IoK8sApiAutoscalingV2beta2ObjectMetricStatus, ioK8sApiAutoscalingV2beta2ObjectMetricStatusDecoder, ioK8sApiAutoscalingV2beta2ObjectMetricStatusEncoder)

import Data.IoK8sApiAutoscalingV2beta2MetricValueStatus exposing (IoK8sApiAutoscalingV2beta2MetricValueStatus, ioK8sApiAutoscalingV2beta2MetricValueStatusDecoder, ioK8sApiAutoscalingV2beta2MetricValueStatusEncoder)
import Data.IoK8sApiAutoscalingV2beta2CrossVersionObjectReference exposing (IoK8sApiAutoscalingV2beta2CrossVersionObjectReference, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder)
import Data.IoK8sApiAutoscalingV2beta2MetricIdentifier exposing (IoK8sApiAutoscalingV2beta2MetricIdentifier, ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder, ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
-}


type alias IoK8sApiAutoscalingV2beta2ObjectMetricStatus =
    { current : IoK8sApiAutoscalingV2beta2MetricValueStatus
    , describedObject : IoK8sApiAutoscalingV2beta2CrossVersionObjectReference
    , metric : IoK8sApiAutoscalingV2beta2MetricIdentifier
    }


ioK8sApiAutoscalingV2beta2ObjectMetricStatusDecoder : Decoder IoK8sApiAutoscalingV2beta2ObjectMetricStatus
ioK8sApiAutoscalingV2beta2ObjectMetricStatusDecoder =
    decode IoK8sApiAutoscalingV2beta2ObjectMetricStatus
        |> required "current" ioK8sApiAutoscalingV2beta2MetricValueStatusDecoder
        |> required "describedObject" ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder
        |> required "metric" ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder



ioK8sApiAutoscalingV2beta2ObjectMetricStatusEncoder : IoK8sApiAutoscalingV2beta2ObjectMetricStatus -> Encode.Value
ioK8sApiAutoscalingV2beta2ObjectMetricStatusEncoder model =
    Encode.object
        [ ( "current", ioK8sApiAutoscalingV2beta2MetricValueStatusEncoder model.current )
        , ( "describedObject", ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder model.describedObject )
        , ( "metric", ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder model.metric )
        ]

