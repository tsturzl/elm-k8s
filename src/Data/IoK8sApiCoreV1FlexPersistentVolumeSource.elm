{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1FlexPersistentVolumeSource exposing (IoK8sApiCoreV1FlexPersistentVolumeSource, ioK8sApiCoreV1FlexPersistentVolumeSourceDecoder, ioK8sApiCoreV1FlexPersistentVolumeSourceEncoder)

import Data.IoK8sApiCoreV1SecretReference exposing (IoK8sApiCoreV1SecretReference, ioK8sApiCoreV1SecretReferenceDecoder, ioK8sApiCoreV1SecretReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
-}


type alias IoK8sApiCoreV1FlexPersistentVolumeSource =
    { driver : String
    , fsType : Maybe String
    , options : Maybe (List String)
    , readOnly : Maybe Bool
    , secretRef : Maybe IoK8sApiCoreV1SecretReference
    }


ioK8sApiCoreV1FlexPersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1FlexPersistentVolumeSource
ioK8sApiCoreV1FlexPersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1FlexPersistentVolumeSource
        |> required "driver" Decode.string
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> optional "options" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> optional "secretRef" (Decode.nullable ioK8sApiCoreV1SecretReferenceDecoder) Nothing



ioK8sApiCoreV1FlexPersistentVolumeSourceEncoder : IoK8sApiCoreV1FlexPersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1FlexPersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "driver", Encode.string model.driver )
        , ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "options", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.options) )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "secretRef", withDefault Encode.null (map ioK8sApiCoreV1SecretReferenceEncoder model.secretRef) )
        ]


