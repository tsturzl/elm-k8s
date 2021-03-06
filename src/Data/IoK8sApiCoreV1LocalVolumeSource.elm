{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LocalVolumeSource exposing (IoK8sApiCoreV1LocalVolumeSource, ioK8sApiCoreV1LocalVolumeSourceDecoder, ioK8sApiCoreV1LocalVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Local represents directly-attached storage with node affinity (Beta feature)
-}


type alias IoK8sApiCoreV1LocalVolumeSource =
    { fsType : Maybe String
    , path : String
    }


ioK8sApiCoreV1LocalVolumeSourceDecoder : Decoder IoK8sApiCoreV1LocalVolumeSource
ioK8sApiCoreV1LocalVolumeSourceDecoder =
    decode IoK8sApiCoreV1LocalVolumeSource
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> required "path" Decode.string



ioK8sApiCoreV1LocalVolumeSourceEncoder : IoK8sApiCoreV1LocalVolumeSource -> Encode.Value
ioK8sApiCoreV1LocalVolumeSourceEncoder model =
    Encode.object
        [ ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "path", Encode.string model.path )
        ]


