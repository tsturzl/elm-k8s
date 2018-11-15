{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1HTTPHeader exposing (IoK8sApiCoreV1HTTPHeader, ioK8sApiCoreV1HTTPHeaderDecoder, ioK8sApiCoreV1HTTPHeaderEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HTTPHeader describes a custom header to be used in HTTP probes
-}


type alias IoK8sApiCoreV1HTTPHeader =
    { name : String
    , value : String
    }


ioK8sApiCoreV1HTTPHeaderDecoder : Decoder IoK8sApiCoreV1HTTPHeader
ioK8sApiCoreV1HTTPHeaderDecoder =
    decode IoK8sApiCoreV1HTTPHeader
        |> required "name" Decode.string
        |> required "value" Decode.string



ioK8sApiCoreV1HTTPHeaderEncoder : IoK8sApiCoreV1HTTPHeader -> Encode.Value
ioK8sApiCoreV1HTTPHeaderEncoder model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "value", Encode.string model.value )
        ]

