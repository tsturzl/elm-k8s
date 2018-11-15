{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NodeConfigSource exposing (IoK8sApiCoreV1NodeConfigSource, ioK8sApiCoreV1NodeConfigSourceDecoder, ioK8sApiCoreV1NodeConfigSourceEncoder)

import Data.IoK8sApiCoreV1ConfigMapNodeConfigSource exposing (IoK8sApiCoreV1ConfigMapNodeConfigSource, ioK8sApiCoreV1ConfigMapNodeConfigSourceDecoder, ioK8sApiCoreV1ConfigMapNodeConfigSourceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
-}


type alias IoK8sApiCoreV1NodeConfigSource =
    { configMap : Maybe IoK8sApiCoreV1ConfigMapNodeConfigSource
    }


ioK8sApiCoreV1NodeConfigSourceDecoder : Decoder IoK8sApiCoreV1NodeConfigSource
ioK8sApiCoreV1NodeConfigSourceDecoder =
    decode IoK8sApiCoreV1NodeConfigSource
        |> optional "configMap" (Decode.nullable ioK8sApiCoreV1ConfigMapNodeConfigSourceDecoder) Nothing



ioK8sApiCoreV1NodeConfigSourceEncoder : IoK8sApiCoreV1NodeConfigSource -> Encode.Value
ioK8sApiCoreV1NodeConfigSourceEncoder model =
    Encode.object
        [ ( "configMap", withDefault Encode.null (map ioK8sApiCoreV1ConfigMapNodeConfigSourceEncoder model.configMap) )
        ]


