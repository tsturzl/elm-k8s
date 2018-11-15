{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV2beta2MetricIdentifier exposing (IoK8sApiAutoscalingV2beta2MetricIdentifier, ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder, ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   MetricIdentifier defines the name and optionally selector for a metric
-}


type alias IoK8sApiAutoscalingV2beta2MetricIdentifier =
    { name : String
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    }


ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder : Decoder IoK8sApiAutoscalingV2beta2MetricIdentifier
ioK8sApiAutoscalingV2beta2MetricIdentifierDecoder =
    decode IoK8sApiAutoscalingV2beta2MetricIdentifier
        |> required "name" Decode.string
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing



ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder : IoK8sApiAutoscalingV2beta2MetricIdentifier -> Encode.Value
ioK8sApiAutoscalingV2beta2MetricIdentifierEncoder model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        ]


