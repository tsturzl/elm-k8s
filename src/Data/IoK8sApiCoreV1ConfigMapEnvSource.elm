{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ConfigMapEnvSource exposing (IoK8sApiCoreV1ConfigMapEnvSource, ioK8sApiCoreV1ConfigMapEnvSourceDecoder, ioK8sApiCoreV1ConfigMapEnvSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.  The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
-}


type alias IoK8sApiCoreV1ConfigMapEnvSource =
    { name : Maybe String
    , optional : Maybe Bool
    }


ioK8sApiCoreV1ConfigMapEnvSourceDecoder : Decoder IoK8sApiCoreV1ConfigMapEnvSource
ioK8sApiCoreV1ConfigMapEnvSourceDecoder =
    decode IoK8sApiCoreV1ConfigMapEnvSource
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "optional" (Decode.nullable Decode.bool) Nothing



ioK8sApiCoreV1ConfigMapEnvSourceEncoder : IoK8sApiCoreV1ConfigMapEnvSource -> Encode.Value
ioK8sApiCoreV1ConfigMapEnvSourceEncoder model =
    Encode.object
        [ ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "optional", withDefault Encode.null (map Encode.bool model.optional) )
        ]


