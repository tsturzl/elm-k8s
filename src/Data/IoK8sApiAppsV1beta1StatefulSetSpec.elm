{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1StatefulSetSpec exposing (IoK8sApiAppsV1beta1StatefulSetSpec, ioK8sApiAppsV1beta1StatefulSetSpecDecoder, ioK8sApiAppsV1beta1StatefulSetSpecEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Data.IoK8sApiCoreV1PodTemplateSpec exposing (IoK8sApiCoreV1PodTemplateSpec, ioK8sApiCoreV1PodTemplateSpecDecoder, ioK8sApiCoreV1PodTemplateSpecEncoder)
import Data.IoK8sApiAppsV1beta1StatefulSetUpdateStrategy exposing (IoK8sApiAppsV1beta1StatefulSetUpdateStrategy, ioK8sApiAppsV1beta1StatefulSetUpdateStrategyDecoder, ioK8sApiAppsV1beta1StatefulSetUpdateStrategyEncoder)
import Data.IoK8sApiCoreV1PersistentVolumeClaim exposing (IoK8sApiCoreV1PersistentVolumeClaim, ioK8sApiCoreV1PersistentVolumeClaimDecoder, ioK8sApiCoreV1PersistentVolumeClaimEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   A StatefulSetSpec is the specification of a StatefulSet.
-}


type alias IoK8sApiAppsV1beta1StatefulSetSpec =
    { podManagementPolicy : Maybe String
    , replicas : Maybe Int
    , revisionHistoryLimit : Maybe Int
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    , serviceName : String
    , template : IoK8sApiCoreV1PodTemplateSpec
    , updateStrategy : Maybe IoK8sApiAppsV1beta1StatefulSetUpdateStrategy
    , volumeClaimTemplates : Maybe (List IoK8sApiCoreV1PersistentVolumeClaim)
    }


ioK8sApiAppsV1beta1StatefulSetSpecDecoder : Decoder IoK8sApiAppsV1beta1StatefulSetSpec
ioK8sApiAppsV1beta1StatefulSetSpecDecoder =
    decode IoK8sApiAppsV1beta1StatefulSetSpec
        |> optional "podManagementPolicy" (Decode.nullable Decode.string) Nothing
        |> optional "replicas" (Decode.nullable Decode.int) Nothing
        |> optional "revisionHistoryLimit" (Decode.nullable Decode.int) Nothing
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing
        |> required "serviceName" Decode.string
        |> required "template" ioK8sApiCoreV1PodTemplateSpecDecoder
        |> optional "updateStrategy" (Decode.nullable ioK8sApiAppsV1beta1StatefulSetUpdateStrategyDecoder) Nothing
        |> optional "volumeClaimTemplates" (Decode.nullable (Decode.list ioK8sApiCoreV1PersistentVolumeClaimDecoder)) Nothing



ioK8sApiAppsV1beta1StatefulSetSpecEncoder : IoK8sApiAppsV1beta1StatefulSetSpec -> Encode.Value
ioK8sApiAppsV1beta1StatefulSetSpecEncoder model =
    Encode.object
        [ ( "podManagementPolicy", withDefault Encode.null (map Encode.string model.podManagementPolicy) )
        , ( "replicas", withDefault Encode.null (map Encode.int model.replicas) )
        , ( "revisionHistoryLimit", withDefault Encode.null (map Encode.int model.revisionHistoryLimit) )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        , ( "serviceName", Encode.string model.serviceName )
        , ( "template", ioK8sApiCoreV1PodTemplateSpecEncoder model.template )
        , ( "updateStrategy", withDefault Encode.null (map ioK8sApiAppsV1beta1StatefulSetUpdateStrategyEncoder model.updateStrategy) )
        , ( "volumeClaimTemplates", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1PersistentVolumeClaimEncoder) model.volumeClaimTemplates) )
        ]


