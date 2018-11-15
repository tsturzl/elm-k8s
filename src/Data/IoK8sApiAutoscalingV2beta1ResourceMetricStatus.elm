{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta1ResourceMetricStatus exposing (IoK8sApiAutoscalingV2beta1ResourceMetricStatus, ioK8sApiAutoscalingV2beta1ResourceMetricStatusDecoder, ioK8sApiAutoscalingV2beta1ResourceMetricStatusEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.
-}


type alias IoK8sApiAutoscalingV2beta1ResourceMetricStatus =
    { currentAverageUtilization : Maybe Int
    , currentAverageValue : IoK8sApimachineryPkgApiResourceQuantity
    , name : String
    }


ioK8sApiAutoscalingV2beta1ResourceMetricStatusDecoder : Decoder IoK8sApiAutoscalingV2beta1ResourceMetricStatus
ioK8sApiAutoscalingV2beta1ResourceMetricStatusDecoder =
    decode IoK8sApiAutoscalingV2beta1ResourceMetricStatus
        |> optional "currentAverageUtilization" (Decode.nullable Decode.int) Nothing
        |> required "currentAverageValue" ioK8sApimachineryPkgApiResourceQuantityDecoder
        |> required "name" Decode.string



ioK8sApiAutoscalingV2beta1ResourceMetricStatusEncoder : IoK8sApiAutoscalingV2beta1ResourceMetricStatus -> Encode.Value
ioK8sApiAutoscalingV2beta1ResourceMetricStatusEncoder model =
    Encode.object
        [ ( "currentAverageUtilization", withDefault Encode.null (map Encode.int model.currentAverageUtilization) )
        , ( "currentAverageValue", ioK8sApimachineryPkgApiResourceQuantityEncoder model.currentAverageValue )
        , ( "name", Encode.string model.name )
        ]

