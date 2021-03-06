{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1GCEPersistentDiskVolumeSource exposing (IoK8sApiCoreV1GCEPersistentDiskVolumeSource, ioK8sApiCoreV1GCEPersistentDiskVolumeSourceDecoder, ioK8sApiCoreV1GCEPersistentDiskVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents a Persistent Disk resource in Google Compute Engine.  A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
-}


type alias IoK8sApiCoreV1GCEPersistentDiskVolumeSource =
    { fsType : Maybe String
    , partition : Maybe Int
    , pdName : String
    , readOnly : Maybe Bool
    }


ioK8sApiCoreV1GCEPersistentDiskVolumeSourceDecoder : Decoder IoK8sApiCoreV1GCEPersistentDiskVolumeSource
ioK8sApiCoreV1GCEPersistentDiskVolumeSourceDecoder =
    decode IoK8sApiCoreV1GCEPersistentDiskVolumeSource
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> optional "partition" (Decode.nullable Decode.int) Nothing
        |> required "pdName" Decode.string
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing



ioK8sApiCoreV1GCEPersistentDiskVolumeSourceEncoder : IoK8sApiCoreV1GCEPersistentDiskVolumeSource -> Encode.Value
ioK8sApiCoreV1GCEPersistentDiskVolumeSourceEncoder model =
    Encode.object
        [ ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "partition", withDefault Encode.null (map Encode.int model.partition) )
        , ( "pdName", Encode.string model.pdName )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        ]


