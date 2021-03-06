{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NFSVolumeSource exposing (IoK8sApiCoreV1NFSVolumeSource, ioK8sApiCoreV1NFSVolumeSourceDecoder, ioK8sApiCoreV1NFSVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
-}


type alias IoK8sApiCoreV1NFSVolumeSource =
    { path : String
    , readOnly : Maybe Bool
    , server : String
    }


ioK8sApiCoreV1NFSVolumeSourceDecoder : Decoder IoK8sApiCoreV1NFSVolumeSource
ioK8sApiCoreV1NFSVolumeSourceDecoder =
    decode IoK8sApiCoreV1NFSVolumeSource
        |> required "path" Decode.string
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing
        |> required "server" Decode.string



ioK8sApiCoreV1NFSVolumeSourceEncoder : IoK8sApiCoreV1NFSVolumeSource -> Encode.Value
ioK8sApiCoreV1NFSVolumeSourceEncoder model =
    Encode.object
        [ ( "path", Encode.string model.path )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        , ( "server", Encode.string model.server )
        ]


