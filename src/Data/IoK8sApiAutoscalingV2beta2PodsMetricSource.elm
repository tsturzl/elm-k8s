{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2PodsMetricSource exposing (IoK8sApiAutoscalingV2beta2PodsMetricSource, ioK8sApiAutoscalingV2beta2PodsMetricSourceDecoder, ioK8sApiAutoscalingV2beta2PodsMetricSourceEncoder)

import Data.IoK8sApiAutoscalingV2beta2MetricIdentifier exposing (IoK8sApiAutoscalingV2beta2MetricIdentifier, ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder, ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder)
import Data.IoK8sApiAutoscalingV2beta2MetricTarget exposing (IoK8sApiAutoscalingV2beta2MetricTarget, ioK8sApiAutoscalingV2beta2MetricTargetDecoder, ioK8sApiAutoscalingV2beta2MetricTargetEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
-}


type alias IoK8sApiAutoscalingV2beta2PodsMetricSource =
    { metric : IoK8sApiAutoscalingV2beta2MetricIdentifier
    , target : IoK8sApiAutoscalingV2beta2MetricTarget
    }


ioK8sApiAutoscalingV2beta2PodsMetricSourceDecoder : Decoder IoK8sApiAutoscalingV2beta2PodsMetricSource
ioK8sApiAutoscalingV2beta2PodsMetricSourceDecoder =
    decode IoK8sApiAutoscalingV2beta2PodsMetricSource
        |> required "metric" ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder
        |> required "target" ioK8sApiAutoscalingV2beta2MetricTargetDecoder



ioK8sApiAutoscalingV2beta2PodsMetricSourceEncoder : IoK8sApiAutoscalingV2beta2PodsMetricSource -> Encode.Value
ioK8sApiAutoscalingV2beta2PodsMetricSourceEncoder model =
    Encode.object
        [ ( "metric", ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder model.metric )
        , ( "target", ioK8sApiAutoscalingV2beta2MetricTargetEncoder model.target )
        ]


