{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec exposing (IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec, ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecDecoder, ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecEncoder)

import Data.IoK8sApiAutoscalingV2beta2MetricSpec exposing (IoK8sApiAutoscalingV2beta2MetricSpec, ioK8sApiAutoscalingV2beta2MetricSpecDecoder, ioK8sApiAutoscalingV2beta2MetricSpecEncoder)
import Data.IoK8sApiAutoscalingV2beta2CrossVersionObjectReference exposing (IoK8sApiAutoscalingV2beta2CrossVersionObjectReference, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder, ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
-}


type alias IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec =
    { maxReplicas : Int
    , metrics : Maybe (List IoK8sApiAutoscalingV2beta2MetricSpec)
    , minReplicas : Maybe Int
    , scaleTargetRef : IoK8sApiAutoscalingV2beta2CrossVersionObjectReference
    }


ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecDecoder : Decoder IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec
ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecDecoder =
    decode IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec
        |> required "maxReplicas" Decode.int
        |> optional "metrics" (Decode.nullable (Decode.list ioK8sApiAutoscalingV2beta2MetricSpecDecoder)) Nothing
        |> optional "minReplicas" (Decode.nullable Decode.int) Nothing
        |> required "scaleTargetRef" ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceDecoder



ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecEncoder : IoK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpec -> Encode.Value
ioK8sApiAutoscalingV2beta2HorizontalPodAutoscalerSpecEncoder model =
    Encode.object
        [ ( "maxReplicas", Encode.int model.maxReplicas )
        , ( "metrics", withDefault Encode.null (map (Encode.list << List.map ioK8sApiAutoscalingV2beta2MetricSpecEncoder) model.metrics) )
        , ( "minReplicas", withDefault Encode.null (map Encode.int model.minReplicas) )
        , ( "scaleTargetRef", ioK8sApiAutoscalingV2beta2CrossVersionObjectReferenceEncoder model.scaleTargetRef )
        ]

