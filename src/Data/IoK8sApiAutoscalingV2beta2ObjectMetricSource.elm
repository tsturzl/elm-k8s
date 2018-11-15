{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2ObjectMetricSource exposing (IoK8sApiAutoscalingV2beta2ObjectMetricSource, ioK8sApiAutoscalingV2beta2ObjectMetricSourceDecoder, ioK8sApiAutoscalingV2beta2ObjectMetricSourceEncoder)

import Data.IoK8sApiAutoscalingV2beta2CrossVersionObjectReference exposing (IoK8sApiAutoscalingV2beta2CrossVersionObjectReference, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder)
import Data.IoK8sApiAutoscalingV2beta2MetricIdentifier exposing (IoK8sApiAutoscalingV2beta2MetricIdentifier, ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder, ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder)
import Data.IoK8sApiAutoscalingV2beta2MetricTarget exposing (IoK8sApiAutoscalingV2beta2MetricTarget, ioK8sApiAutoscalingV2beta2MetricTargetDecoder, ioK8sApiAutoscalingV2beta2MetricTargetEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
-}


type alias IoK8sApiAutoscalingV2beta2ObjectMetricSource =
    { describedObject : IoK8sApiAutoscalingV2beta2CrossVersionObjectReference
    , metric : IoK8sApiAutoscalingV2beta2MetricIdentifier
    , target : IoK8sApiAutoscalingV2beta2MetricTarget
    }


ioK8sApiAutoscalingV2beta2ObjectMetricSourceDecoder : Decoder IoK8sApiAutoscalingV2beta2ObjectMetricSource
ioK8sApiAutoscalingV2beta2ObjectMetricSourceDecoder =
    decode IoK8sApiAutoscalingV2beta2ObjectMetricSource
        |> required "describedObject" ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder
        |> required "metric" ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder
        |> required "target" ioK8sApiAutoscalingV2beta2MetricTargetDecoder



ioK8sApiAutoscalingV2beta2ObjectMetricSourceEncoder : IoK8sApiAutoscalingV2beta2ObjectMetricSource -> Encode.Value
ioK8sApiAutoscalingV2beta2ObjectMetricSourceEncoder model =
    Encode.object
        [ ( "describedObject", ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder model.describedObject )
        , ( "metric", ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder model.metric )
        , ( "target", ioK8sApiAutoscalingV2beta2MetricTargetEncoder model.target )
        ]

