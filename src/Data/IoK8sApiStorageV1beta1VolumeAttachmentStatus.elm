{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiStorageV1beta1VolumeAttachmentStatus exposing (IoK8sApiStorageV1beta1VolumeAttachmentStatus, ioK8sApiStorageV1beta1VolumeAttachmentStatusDecoder, ioK8sApiStorageV1beta1VolumeAttachmentStatusEncoder)

import Data.IoK8sApiStorageV1beta1VolumeError exposing (IoK8sApiStorageV1beta1VolumeError, ioK8sApiStorageV1beta1VolumeErrorDecoder, ioK8sApiStorageV1beta1VolumeErrorEncoder)
import Data.IoK8sApiStorageV1beta1VolumeError exposing (IoK8sApiStorageV1beta1VolumeError, ioK8sApiStorageV1beta1VolumeErrorDecoder, ioK8sApiStorageV1beta1VolumeErrorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   VolumeAttachmentStatus is the status of a VolumeAttachment request.
-}


type alias IoK8sApiStorageV1beta1VolumeAttachmentStatus =
    { attachError : Maybe IoK8sApiStorageV1beta1VolumeError
    , attached : Bool
    , attachmentMetadata : Maybe (List String)
    , detachError : Maybe IoK8sApiStorageV1beta1VolumeError
    }


ioK8sApiStorageV1beta1VolumeAttachmentStatusDecoder : Decoder IoK8sApiStorageV1beta1VolumeAttachmentStatus
ioK8sApiStorageV1beta1VolumeAttachmentStatusDecoder =
    decode IoK8sApiStorageV1beta1VolumeAttachmentStatus
        |> optional "attachError" (Decode.nullable ioK8sApiStorageV1beta1VolumeErrorDecoder) Nothing
        |> required "attached" Decode.bool
        |> optional "attachmentMetadata" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "detachError" (Decode.nullable ioK8sApiStorageV1beta1VolumeErrorDecoder) Nothing



ioK8sApiStorageV1beta1VolumeAttachmentStatusEncoder : IoK8sApiStorageV1beta1VolumeAttachmentStatus -> Encode.Value
ioK8sApiStorageV1beta1VolumeAttachmentStatusEncoder model =
    Encode.object
        [ ( "attachError", withDefault Encode.null (map ioK8sApiStorageV1beta1VolumeErrorEncoder model.attachError) )
        , ( "attached", Encode.bool model.attached )
        , ( "attachmentMetadata", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.attachmentMetadata) )
        , ( "detachError", withDefault Encode.null (map ioK8sApiStorageV1beta1VolumeErrorEncoder model.detachError) )
        ]


