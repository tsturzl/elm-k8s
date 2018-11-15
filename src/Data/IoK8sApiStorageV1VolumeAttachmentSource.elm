{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiStorageV1VolumeAttachmentSource exposing (IoK8sApiStorageV1VolumeAttachmentSource, ioK8sApiStorageV1VolumeAttachmentSourceDecoder, ioK8sApiStorageV1VolumeAttachmentSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
-}


type alias IoK8sApiStorageV1VolumeAttachmentSource =
    { persistentVolumeName : Maybe String
    }


ioK8sApiStorageV1VolumeAttachmentSourceDecoder : Decoder IoK8sApiStorageV1VolumeAttachmentSource
ioK8sApiStorageV1VolumeAttachmentSourceDecoder =
    decode IoK8sApiStorageV1VolumeAttachmentSource
        |> optional "persistentVolumeName" (Decode.nullable Decode.string) Nothing



ioK8sApiStorageV1VolumeAttachmentSourceEncoder : IoK8sApiStorageV1VolumeAttachmentSource -> Encode.Value
ioK8sApiStorageV1VolumeAttachmentSourceEncoder model =
    Encode.object
        [ ( "persistentVolumeName", withDefault Encode.null (map Encode.string model.persistentVolumeName) )
        ]

