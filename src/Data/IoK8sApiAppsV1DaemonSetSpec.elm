{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1DaemonSetSpec exposing (IoK8sApiAppsV1DaemonSetSpec, ioK8sApiAppsV1DaemonSetSpecDecoder, ioK8sApiAppsV1DaemonSetSpecEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Data.IoK8sApiCoreV1PodTemplateSpec exposing (IoK8sApiCoreV1PodTemplateSpec, ioK8sApiCoreV1PodTemplateSpecDecoder, ioK8sApiCoreV1PodTemplateSpecEncoder)
import Data.IoK8sApiAppsV1DaemonSetUpdateStrategy exposing (IoK8sApiAppsV1DaemonSetUpdateStrategy, ioK8sApiAppsV1DaemonSetUpdateStrategyDecoder, ioK8sApiAppsV1DaemonSetUpdateStrategyEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DaemonSetSpec is the specification of a daemon set.
-}


type alias IoK8sApiAppsV1DaemonSetSpec =
    { minReadySeconds : Maybe Int
    , revisionHistoryLimit : Maybe Int
    , selector : IoK8sApimachineryPkgApisMetaV1LabelSelector
    , template : IoK8sApiCoreV1PodTemplateSpec
    , updateStrategy : Maybe IoK8sApiAppsV1DaemonSetUpdateStrategy
    }


ioK8sApiAppsV1DaemonSetSpecDecoder : Decoder IoK8sApiAppsV1DaemonSetSpec
ioK8sApiAppsV1DaemonSetSpecDecoder =
    decode IoK8sApiAppsV1DaemonSetSpec
        |> optional "minReadySeconds" (Decode.nullable Decode.int) Nothing
        |> optional "revisionHistoryLimit" (Decode.nullable Decode.int) Nothing
        |> required "selector" ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder
        |> required "template" ioK8sApiCoreV1PodTemplateSpecDecoder
        |> optional "updateStrategy" (Decode.nullable ioK8sApiAppsV1DaemonSetUpdateStrategyDecoder) Nothing



ioK8sApiAppsV1DaemonSetSpecEncoder : IoK8sApiAppsV1DaemonSetSpec -> Encode.Value
ioK8sApiAppsV1DaemonSetSpecEncoder model =
    Encode.object
        [ ( "minReadySeconds", withDefault Encode.null (map Encode.int model.minReadySeconds) )
        , ( "revisionHistoryLimit", withDefault Encode.null (map Encode.int model.revisionHistoryLimit) )
        , ( "selector", ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector )
        , ( "template", ioK8sApiCoreV1PodTemplateSpecEncoder model.template )
        , ( "updateStrategy", withDefault Encode.null (map ioK8sApiAppsV1DaemonSetUpdateStrategyEncoder model.updateStrategy) )
        ]


