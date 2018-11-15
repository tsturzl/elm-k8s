{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1AzureFileVolumeSource exposing (IoK8sApiCoreV1AzureFileVolumeSource, ioK8sApiCoreV1AzureFileVolumeSourceDecoder, ioK8sApiCoreV1AzureFileVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
-}


type alias IoK8sApiCoreV1AzureFileVolumeSource =
    { readOnly : Maybe Bool
    , secretName : String
    , shareName : String
    }


ioK8sApiCoreV1AzureFileVolumeSourceDecoder : Decoder IoK8sApiCoreV1AzureFileVolumeSource
ioK8sApiCoreV1AzureFileVolumeSourceDecoder =
    decode IoK8sApiCoreV1AzureFileVolumeSource
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> required "secretName" Decode.string
        |> required "shareName" Decode.string



ioK8sApiCoreV1AzureFileVolumeSourceEncoder : IoK8sApiCoreV1AzureFileVolumeSource -> Encode.Value
ioK8sApiCoreV1AzureFileVolumeSourceEncoder model =
    Encode.object
        [ ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "secretName", Encode.string model.secretName )
        , ( "shareName", Encode.string model.shareName )
        ]


