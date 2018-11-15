{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1RBDPersistentVolumeSource exposing (IoK8sApiCoreV1RBDPersistentVolumeSource, ioK8sApiCoreV1RBDPersistentVolumeSourceDecoder, ioK8sApiCoreV1RBDPersistentVolumeSourceEncoder)

import Data.IoK8sApiCoreV1SecretReference exposing (IoK8sApiCoreV1SecretReference, ioK8sApiCoreV1SecretReferenceDecoder, ioK8sApiCoreV1SecretReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
-}


type alias IoK8sApiCoreV1RBDPersistentVolumeSource =
    { fsType : Maybe String
    , image : String
    , keyring : Maybe String
    , monitors : (List String)
    , pool : Maybe String
    , readOnly : Maybe Bool
    , secretRef : Maybe IoK8sApiCoreV1SecretReference
    , user : Maybe String
    }


ioK8sApiCoreV1RBDPersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1RBDPersistentVolumeSource
ioK8sApiCoreV1RBDPersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1RBDPersistentVolumeSource
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> required "image" Decode.string
        |> optional "keyring" (Decode.nullable Decode.string) Nothing
        |> required "monitors" (Decode.list Decode.string)
        |> optional "pool" (Decode.nullable Decode.string) Nothing
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> optional "secretRef" (Decode.nullable ioK8sApiCoreV1SecretReferenceDecoder) Nothing
        |> optional "user" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1RBDPersistentVolumeSourceEncoder : IoK8sApiCoreV1RBDPersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1RBDPersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "image", Encode.string model.image )
        , ( "keyring", withDefault Encode.null (map Encode.string model.keyring) )
        , ( "monitors", (Encode.list << List.map Encode.string) model.monitors )
        , ( "pool", withDefault Encode.null (map Encode.string model.pool) )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "secretRef", withDefault Encode.null (map ioK8sApiCoreV1SecretReferenceEncoder model.secretRef) )
        , ( "user", withDefault Encode.null (map Encode.string model.user) )
        ]


