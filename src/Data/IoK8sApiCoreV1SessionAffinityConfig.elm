{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1SessionAffinityConfig exposing (IoK8sApiCoreV1SessionAffinityConfig, ioK8sApiCoreV1SessionAffinityConfigDecoder, ioK8sApiCoreV1SessionAffinityConfigEncoder)

import Data.IoK8sApiCoreV1ClientIPConfig exposing (IoK8sApiCoreV1ClientIPConfig, ioK8sApiCoreV1ClientIPConfigDecoder, ioK8sApiCoreV1ClientIPConfigEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   SessionAffinityConfig represents the configurations of session affinity.
-}


type alias IoK8sApiCoreV1SessionAffinityConfig =
    { clientIP : Maybe IoK8sApiCoreV1ClientIPConfig
    }


ioK8sApiCoreV1SessionAffinityConfigDecoder : Decoder IoK8sApiCoreV1SessionAffinityConfig
ioK8sApiCoreV1SessionAffinityConfigDecoder =
    decode IoK8sApiCoreV1SessionAffinityConfig
        |> optional "clientIP" (Decode.nullable ioK8sApiCoreV1ClientIPConfigDecoder) Nothing



ioK8sApiCoreV1SessionAffinityConfigEncoder : IoK8sApiCoreV1SessionAffinityConfig -> Encode.Value
ioK8sApiCoreV1SessionAffinityConfigEncoder model =
    Encode.object
        [ ( "clientIP", withDefault Encode.null (map ioK8sApiCoreV1ClientIPConfigEncoder model.clientIP) )
        ]


