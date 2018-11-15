{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiStorageV1alpha1VolumeAttachment exposing (IoK8sApiStorageV1alpha1VolumeAttachment, ioK8sApiStorageV1alpha1VolumeAttachmentDecoder, ioK8sApiStorageV1alpha1VolumeAttachmentEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiStorageV1alpha1VolumeAttachmentSpec exposing (IoK8sApiStorageV1alpha1VolumeAttachmentSpec, ioK8sApiStorageV1alpha1VolumeAttachmentSpecDecoder, ioK8sApiStorageV1alpha1VolumeAttachmentSpecEncoder)
import Data.IoK8sApiStorageV1alpha1VolumeAttachmentStatus exposing (IoK8sApiStorageV1alpha1VolumeAttachmentStatus, ioK8sApiStorageV1alpha1VolumeAttachmentStatusDecoder, ioK8sApiStorageV1alpha1VolumeAttachmentStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.  VolumeAttachment objects are non-namespaced.
-}


type alias IoK8sApiStorageV1alpha1VolumeAttachment =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : IoK8sApiStorageV1alpha1VolumeAttachmentSpec
    , status : Maybe IoK8sApiStorageV1alpha1VolumeAttachmentStatus
    }


ioK8sApiStorageV1alpha1VolumeAttachmentDecoder : Decoder IoK8sApiStorageV1alpha1VolumeAttachment
ioK8sApiStorageV1alpha1VolumeAttachmentDecoder =
    decode IoK8sApiStorageV1alpha1VolumeAttachment
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> required "spec" ioK8sApiStorageV1alpha1VolumeAttachmentSpecDecoder
        |> optional "status" (Decode.nullable ioK8sApiStorageV1alpha1VolumeAttachmentStatusDecoder) Nothing



ioK8sApiStorageV1alpha1VolumeAttachmentEncoder : IoK8sApiStorageV1alpha1VolumeAttachment -> Encode.Value
ioK8sApiStorageV1alpha1VolumeAttachmentEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", ioK8sApiStorageV1alpha1VolumeAttachmentSpecEncoder model.spec )
        , ( "status", withDefault Encode.null (map ioK8sApiStorageV1alpha1VolumeAttachmentStatusEncoder model.status) )
        ]


