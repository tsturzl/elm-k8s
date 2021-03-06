{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PersistentVolumeClaimSpec exposing (IoK8sApiCoreV1PersistentVolumeClaimSpec, ioK8sApiCoreV1PersistentVolumeClaimSpecDecoder, ioK8sApiCoreV1PersistentVolumeClaimSpecEncoder)

import Data.IoK8sApiCoreV1TypedLocalObjectReference exposing (IoK8sApiCoreV1TypedLocalObjectReference, ioK8sApiCoreV1TypedLocalObjectReferenceDecoder, ioK8sApiCoreV1TypedLocalObjectReferenceEncoder)
import Data.IoK8sApiCoreV1ResourceRequirements exposing (IoK8sApiCoreV1ResourceRequirements, ioK8sApiCoreV1ResourceRequirementsDecoder, ioK8sApiCoreV1ResourceRequirementsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
-}


type alias IoK8sApiCoreV1PersistentVolumeClaimSpec =
    { accessModes : Maybe (List String)
    , dataSource : Maybe IoK8sApiCoreV1TypedLocalObjectReference
    , resources : Maybe IoK8sApiCoreV1ResourceRequirements
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    , storageClassName : Maybe String
    , volumeMode : Maybe String
    , volumeName : Maybe String
    }


ioK8sApiCoreV1PersistentVolumeClaimSpecDecoder : Decoder IoK8sApiCoreV1PersistentVolumeClaimSpec
ioK8sApiCoreV1PersistentVolumeClaimSpecDecoder =
    decode IoK8sApiCoreV1PersistentVolumeClaimSpec
        |> optional "accessModes" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "dataSource" (Decode.nullable ioK8sApiCoreV1TypedLocalObjectReferenceDecoder) Nothing
        |> optional "resources" (Decode.nullable ioK8sApiCoreV1ResourceRequirementsDecoder) Nothing
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing
        |> optional "storageClassName" (Decode.nullable Decode.string) Nothing
        |> optional "volumeMode" (Decode.nullable Decode.string) Nothing
        |> optional "volumeName" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1PersistentVolumeClaimSpecEncoder : IoK8sApiCoreV1PersistentVolumeClaimSpec -> Encode.Value
ioK8sApiCoreV1PersistentVolumeClaimSpecEncoder model =
    Encode.object
        [ ( "accessModes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.accessModes) )
        , ( "dataSource", withDefault Encode.null (map ioK8sApiCoreV1TypedLocalObjectReferenceEncoder model.dataSource) )
        , ( "resources", withDefault Encode.null (map ioK8sApiCoreV1ResourceRequirementsEncoder model.resources) )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        , ( "storageClassName", withDefault Encode.null (map Encode.string model.storageClassName) )
        , ( "volumeMode", withDefault Encode.null (map Encode.string model.volumeMode) )
        , ( "volumeName", withDefault Encode.null (map Encode.string model.volumeName) )
        ]


