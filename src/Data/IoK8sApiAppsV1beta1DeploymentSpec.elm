{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1DeploymentSpec exposing (IoK8sApiAppsV1beta1DeploymentSpec, ioK8sApiAppsV1beta1DeploymentSpecDecoder, ioK8sApiAppsV1beta1DeploymentSpecEncoder)

import Data.IoK8sApiAppsV1beta1RollbackConfig exposing (IoK8sApiAppsV1beta1RollbackConfig, ioK8sApiAppsV1beta1RollbackConfigDecoder, ioK8sApiAppsV1beta1RollbackConfigEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Data.IoK8sApiAppsV1beta1DeploymentStrategy exposing (IoK8sApiAppsV1beta1DeploymentStrategy, ioK8sApiAppsV1beta1DeploymentStrategyDecoder, ioK8sApiAppsV1beta1DeploymentStrategyEncoder)
import Data.IoK8sApiCoreV1PodTemplateSpec exposing (IoK8sApiCoreV1PodTemplateSpec, ioK8sApiCoreV1PodTemplateSpecDecoder, ioK8sApiCoreV1PodTemplateSpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DeploymentSpec is the specification of the desired behavior of the Deployment.
-}


type alias IoK8sApiAppsV1beta1DeploymentSpec =
    { minReadySeconds : Maybe Int
    , paused : Maybe Bool
    , progressDeadlineSeconds : Maybe Int
    , replicas : Maybe Int
    , revisionHistoryLimit : Maybe Int
    , rollbackTo : Maybe IoK8sApiAppsV1beta1RollbackConfig
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    , strategy : Maybe IoK8sApiAppsV1beta1DeploymentStrategy
    , template : IoK8sApiCoreV1PodTemplateSpec
    }


ioK8sApiAppsV1beta1DeploymentSpecDecoder : Decoder IoK8sApiAppsV1beta1DeploymentSpec
ioK8sApiAppsV1beta1DeploymentSpecDecoder =
    decode IoK8sApiAppsV1beta1DeploymentSpec
        |> optional "minReadySeconds" (Decode.nullable Decode.int) Nothing
        |> optional "paused" (Decode.nullable Decode.bool) Nothing
        |> optional "progressDeadlineSeconds" (Decode.nullable Decode.int) Nothing
        |> optional "replicas" (Decode.nullable Decode.int) Nothing
        |> optional "revisionHistoryLimit" (Decode.nullable Decode.int) Nothing
        |> optional "rollbackTo" (Decode.nullable ioK8sApiAppsV1beta1RollbackConfigDecoder) Nothing
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing
        |> optional "strategy" (Decode.nullable ioK8sApiAppsV1beta1DeploymentStrategyDecoder) Nothing
        |> required "template" ioK8sApiCoreV1PodTemplateSpecDecoder



ioK8sApiAppsV1beta1DeploymentSpecEncoder : IoK8sApiAppsV1beta1DeploymentSpec -> Encode.Value
ioK8sApiAppsV1beta1DeploymentSpecEncoder model =
    Encode.object
        [ ( "minReadySeconds", withDefault Encode.null (map Encode.int model.minReadySeconds) )
        , ( "paused", withDefault Encode.null (map Encode.bool model.paused) )
        , ( "progressDeadlineSeconds", withDefault Encode.null (map Encode.int model.progressDeadlineSeconds) )
        , ( "replicas", withDefault Encode.null (map Encode.int model.replicas) )
        , ( "revisionHistoryLimit", withDefault Encode.null (map Encode.int model.revisionHistoryLimit) )
        , ( "rollbackTo", withDefault Encode.null (map ioK8sApiAppsV1beta1RollbackConfigEncoder model.rollbackTo) )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        , ( "strategy", withDefault Encode.null (map ioK8sApiAppsV1beta1DeploymentStrategyEncoder model.strategy) )
        , ( "template", ioK8sApiCoreV1PodTemplateSpecEncoder model.template )
        ]


