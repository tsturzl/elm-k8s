{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1GlusterfsPersistentVolumeSource exposing (IoK8sApiCoreV1GlusterfsPersistentVolumeSource, ioK8sApiCoreV1GlusterfsPersistentVolumeSourceDecoder, ioK8sApiCoreV1GlusterfsPersistentVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
-}


type alias IoK8sApiCoreV1GlusterfsPersistentVolumeSource =
    { endpoints : String
    , endpointsNamespace : Maybe String
    , path : String
    , readOnly : Maybe Bool
    }


ioK8sApiCoreV1GlusterfsPersistentVolumeSourceDecoder : Decoder IoK8sApiCoreV1GlusterfsPersistentVolumeSource
ioK8sApiCoreV1GlusterfsPersistentVolumeSourceDecoder =
    decode IoK8sApiCoreV1GlusterfsPersistentVolumeSource
        |> required "endpoints" Decode.string
        |> optional "endpointsNamespace" (Decode.nullable Decode.string) Nothing
        |> required "path" Decode.string
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing



ioK8sApiCoreV1GlusterfsPersistentVolumeSourceEncoder : IoK8sApiCoreV1GlusterfsPersistentVolumeSource -> Encode.Value
ioK8sApiCoreV1GlusterfsPersistentVolumeSourceEncoder model =
    Encode.object
        [ ( "endpoints", Encode.string model.endpoints )
        , ( "endpointsNamespace", withDefault Encode.null (map Encode.string model.endpointsNamespace) )
        , ( "path", Encode.string model.path )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        ]

