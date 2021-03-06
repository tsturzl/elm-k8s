{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1AzureFilePersistentVolumeSource exposing (IoK8sApiCoreV1AzureFilePersistentVolumeSource, ioK8sApiCoreV1AzureFilePersistentVolumeSourceDecoder, ioK8sApiCoreV1AzureFilePersistentVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
-}


type alias IoK8sApiCoreV1AzureFilePersistentVolumeSource =
    { readOnly : Maybe Bool
    , secretName : String
    , secretNamespace : Maybe String
    , shareName : String
    }


ioK8sApiCoreV1AzureFilePersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1AzureFilePersistentVolumeSource
ioK8sApiCoreV1AzureFilePersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1AzureFilePersistentVolumeSource
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> required "secretName" Decode.string
        |> optional "secretNamespace" (Decode.nullable Decode.string) Nothing
        |> required "shareName" Decode.string



ioK8sApiCoreV1AzureFilePersistentVolumeSourceEncoder : IoK8sApiCoreV1AzureFilePersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1AzureFilePersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "secretName", Encode.string model.secretName )
        , ( "secretNamespace", withDefault Encode.null (map Encode.string model.secretNamespace) )
        , ( "shareName", Encode.string model.shareName )
        ]


