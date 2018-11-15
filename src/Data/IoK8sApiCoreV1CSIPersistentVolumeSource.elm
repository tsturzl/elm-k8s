{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1CSIPersistentVolumeSource exposing (IoK8sApiCoreV1CSIPersistentVolumeSource, ioK8sApiCoreV1CSIPersistentVolumeSourceDecoder, ioK8sApiCoreV1CSIPersistentVolumeSourceEncoder)

import Data.IoK8sApiCoreV1SecretReference exposing (IoK8sApiCoreV1SecretReference, ioK8sApiCoreV1SecretReferenceDecoder, ioK8sApiCoreV1SecretReferenceEncoder)
import Data.IoK8sApiCoreV1SecretReference exposing (IoK8sApiCoreV1SecretReference, ioK8sApiCoreV1SecretReferenceDecoder, ioK8sApiCoreV1SecretReferenceEncoder)
import Data.IoK8sApiCoreV1SecretReference exposing (IoK8sApiCoreV1SecretReference, ioK8sApiCoreV1SecretReferenceDecoder, ioK8sApiCoreV1SecretReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents storage that is managed by an external CSI volume driver (Beta feature)
-}


type alias IoK8sApiCoreV1CSIPersistentVolumeSource =
    { controllerPublishSecretRef : Maybe IoK8sApiCoreV1SecretReference
    , driver : String
    , fsType : Maybe String
    , nodePublishSecretRef : Maybe IoK8sApiCoreV1SecretReference
    , nodeStageSecretRef : Maybe IoK8sApiCoreV1SecretReference
    , readOnly : Maybe Bool
    , volumeAttributes : Maybe (List String)
    , volumeHandle : String
    }


ioK8sApiCoreV1CSIPersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1CSIPersistentVolumeSource
ioK8sApiCoreV1CSIPersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1CSIPersistentVolumeSource
        |> optional "controllerPublishSecretRef" (Decode.nullable ioK8sApiCoreV1SecretReferenceDecoder) Nothing
        |> required "driver" Decode.string
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> optional "nodePublishSecretRef" (Decode.nullable ioK8sApiCoreV1SecretReferenceDecoder) Nothing
        |> optional "nodeStageSecretRef" (Decode.nullable ioK8sApiCoreV1SecretReferenceDecoder) Nothing
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> optional "volumeAttributes" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> required "volumeHandle" Decode.string



ioK8sApiCoreV1CSIPersistentVolumeSourceEncoder : IoK8sApiCoreV1CSIPersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1CSIPersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "controllerPublishSecretRef", withDefault Encode.null (map ioK8sApiCoreV1SecretReferenceEncoder model.controllerPublishSecretRef) )
        , ( "driver", Encode.string model.driver )
        , ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "nodePublishSecretRef", withDefault Encode.null (map ioK8sApiCoreV1SecretReferenceEncoder model.nodePublishSecretRef) )
        , ( "nodeStageSecretRef", withDefault Encode.null (map ioK8sApiCoreV1SecretReferenceEncoder model.nodeStageSecretRef) )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "volumeAttributes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.volumeAttributes) )
        , ( "volumeHandle", Encode.string model.volumeHandle )
        ]


