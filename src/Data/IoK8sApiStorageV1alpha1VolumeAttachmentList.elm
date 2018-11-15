{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiStorageV1alpha1VolumeAttachmentList exposing (IoK8sApiStorageV1alpha1VolumeAttachmentList, ioK8sApiStorageV1alpha1VolumeAttachmentListDecoder, ioK8sApiStorageV1alpha1VolumeAttachmentListEncoder)

import Data.IoK8sApiStorageV1alpha1VolumeAttachment exposing (IoK8sApiStorageV1alpha1VolumeAttachment, ioK8sApiStorageV1alpha1VolumeAttachmentDecoder, ioK8sApiStorageV1alpha1VolumeAttachmentEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   VolumeAttachmentList is a collection of VolumeAttachment objects.
-}


type alias IoK8sApiStorageV1alpha1VolumeAttachmentList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiStorageV1alpha1VolumeAttachment)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiStorageV1alpha1VolumeAttachmentListDecoder : Decoder IoK8sApiStorageV1alpha1VolumeAttachmentList
ioK8sApiStorageV1alpha1VolumeAttachmentListDecoder =
    decode IoK8sApiStorageV1alpha1VolumeAttachmentList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiStorageV1alpha1VolumeAttachmentDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiStorageV1alpha1VolumeAttachmentListEncoder : IoK8sApiStorageV1alpha1VolumeAttachmentList -> Encode.Value
ioK8sApiStorageV1alpha1VolumeAttachmentListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiStorageV1alpha1VolumeAttachmentEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]


