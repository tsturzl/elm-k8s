{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1AttachedVolume exposing (IoK8sApiCoreV1AttachedVolume, ioK8sApiCoreV1AttachedVolumeDecoder, ioK8sApiCoreV1AttachedVolumeEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   AttachedVolume describes a volume attached to a node
-}


type alias IoK8sApiCoreV1AttachedVolume =
    { devicePath : String
    , name : String
    }


ioK8sApiCoreV1AttachedVolumeDecoder : Decoder IoK8sApiCoreV1AttachedVolume
ioK8sApiCoreV1AttachedVolumeDecoder =
    decode IoK8sApiCoreV1AttachedVolume
        |> required "devicePath" Decode.string
        |> required "name" Decode.string



ioK8sApiCoreV1AttachedVolumeEncoder : IoK8sApiCoreV1AttachedVolume -> Encode.Value
ioK8sApiCoreV1AttachedVolumeEncoder model =
    Encode.object
        [ ( "devicePath", Encode.string model.devicePath )
        , ( "name", Encode.string model.name )
        ]


