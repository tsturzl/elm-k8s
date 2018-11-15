{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta1MetricSpec exposing (IoK8sApiAutoscalingV2beta1MetricSpec, ioK8sApiAutoscalingV2beta1MetricSpecDecoder, ioK8sApiAutoscalingV2beta1MetricSpecEncoder)

import Data.IoK8sApiAutoscalingV2beta1ExternalMetricSource exposing (IoK8sApiAutoscalingV2beta1ExternalMetricSource, ioK8sApiAutoscalingV2beta1ExternalMetricSourceDecoder, ioK8sApiAutoscalingV2beta1ExternalMetricSourceEncoder)
import Data.IoK8sApiAutoscalingV2beta1ObjectMetricSource exposing (IoK8sApiAutoscalingV2beta1ObjectMetricSource, ioK8sApiAutoscalingV2beta1ObjectMetricSourceDecoder, ioK8sApiAutoscalingV2beta1ObjectMetricSourceEncoder)
import Data.IoK8sApiAutoscalingV2beta1PodsMetricSource exposing (IoK8sApiAutoscalingV2beta1PodsMetricSource, ioK8sApiAutoscalingV2beta1PodsMetricSourceDecoder, ioK8sApiAutoscalingV2beta1PodsMetricSourceEncoder)
import Data.IoK8sApiAutoscalingV2beta1ResourceMetricSource exposing (IoK8sApiAutoscalingV2beta1ResourceMetricSource, ioK8sApiAutoscalingV2beta1ResourceMetricSourceDecoder, ioK8sApiAutoscalingV2beta1ResourceMetricSourceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
-}


type alias IoK8sApiAutoscalingV2beta1MetricSpec =
    { external : Maybe IoK8sApiAutoscalingV2beta1ExternalMetricSource
    , object : Maybe IoK8sApiAutoscalingV2beta1ObjectMetricSource
    , pods : Maybe IoK8sApiAutoscalingV2beta1PodsMetricSource
    , resource : Maybe IoK8sApiAutoscalingV2beta1ResourceMetricSource
    , type_ : String
    }


ioK8sApiAutoscalingV2beta1MetricSpecDecoder : Decoder IoK8sApiAutoscalingV2beta1MetricSpec
ioK8sApiAutoscalingV2beta1MetricSpecDecoder =
    decode IoK8sApiAutoscalingV2beta1MetricSpec
        |> optional "external" (Decode.nullable ioK8sApiAutoscalingV2beta1ExternalMetricSourceDecoder) Nothing
        |> optional "object" (Decode.nullable ioK8sApiAutoscalingV2beta1ObjectMetricSourceDecoder) Nothing
        |> optional "pods" (Decode.nullable ioK8sApiAutoscalingV2beta1PodsMetricSourceDecoder) Nothing
        |> optional "resource" (Decode.nullable ioK8sApiAutoscalingV2beta1ResourceMetricSourceDecoder) Nothing
        |> required "type" Decode.string



ioK8sApiAutoscalingV2beta1MetricSpecEncoder : IoK8sApiAutoscalingV2beta1MetricSpec -> Encode.Value
ioK8sApiAutoscalingV2beta1MetricSpecEncoder model =
    Encode.object
        [ ( "external", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ExternalMetricSourceEncoder model.external) )
        , ( "object", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ObjectMetricSourceEncoder model.object) )
        , ( "pods", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1PodsMetricSourceEncoder model.pods) )
        , ( "resource", withDefault Encode.null (map ioK8sApiAutoscalingV2beta1ResourceMetricSourceEncoder model.resource) )
        , ( "type", Encode.string model.type_ )
        ]


