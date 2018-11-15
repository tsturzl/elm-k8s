{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta1PodsMetricStatus exposing (IoK8sApiAutoscalingV2beta1PodsMetricStatus, ioK8sApiAutoscalingV2beta1PodsMetricStatusDecoder, ioK8sApiAutoscalingV2beta1PodsMetricStatusEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
-}


type alias IoK8sApiAutoscalingV2beta1PodsMetricStatus =
    { currentAverageValue : IoK8sApimachineryPkgApiResourceQuantity
    , metricName : String
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    }


ioK8sApiAutoscalingV2beta1PodsMetricStatusDecoder : Decoder IoK8sApiAutoscalingV2beta1PodsMetricStatus
ioK8sApiAutoscalingV2beta1PodsMetricStatusDecoder =
    decode IoK8sApiAutoscalingV2beta1PodsMetricStatus
        |> required "currentAverageValue" ioK8sApimachineryPkgApiResourceQuantityDecoder
        |> required "metricName" Decode.string
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing



ioK8sApiAutoscalingV2beta1PodsMetricStatusEncoder : IoK8sApiAutoscalingV2beta1PodsMetricStatus -> Encode.Value
ioK8sApiAutoscalingV2beta1PodsMetricStatusEncoder model =
    Encode.object
        [ ( "currentAverageValue", ioK8sApimachineryPkgApiResourceQuantityEncoder model.currentAverageValue )
        , ( "metricName", Encode.string model.metricName )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        ]


