{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1StorageOSPersistentVolumeSource exposing (IoK8sApiCoreV1StorageOSPersistentVolumeSource, ioK8sApiCoreV1StorageOSPersistentVolumeSourceDecoder, ioK8sApiCoreV1StorageOSPersistentVolumeSourceEncoder)

import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents a StorageOS persistent volume resource.
-}


type alias IoK8sApiCoreV1StorageOSPersistentVolumeSource =
    { fsType : Maybe String
    , readOnly : Maybe Bool
    , secretRef : Maybe IoK8sApiCoreV1ObjectReference
    , volumeName : Maybe String
    , volumeNamespace : Maybe String
    }


ioK8sApiCoreV1StorageOSPersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1StorageOSPersistentVolumeSource
ioK8sApiCoreV1StorageOSPersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1StorageOSPersistentVolumeSource
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> optional "secretRef" (Decode.nullable ioK8sApiCoreV1ObjectReferenceDecoder) Nothing
        |> optional "volumeName" (Decode.nullable Decode.string) Nothing
        |> optional "volumeNamespace" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1StorageOSPersistentVolumeSourceEncoder : IoK8sApiCoreV1StorageOSPersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1StorageOSPersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "secretRef", withDefault Encode.null (map ioK8sApiCoreV1ObjectReferenceEncoder model.secretRef) )
        , ( "volumeName", withDefault Encode.null (map Encode.string model.volumeName) )
        , ( "volumeNamespace", withDefault Encode.null (map Encode.string model.volumeNamespace) )
        ]

