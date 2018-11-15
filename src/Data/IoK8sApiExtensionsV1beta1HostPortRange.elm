{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1HostPortRange exposing (IoK8sApiExtensionsV1beta1HostPortRange, ioK8sApiExtensionsV1beta1HostPortRangeDecoder, ioK8sApiExtensionsV1beta1HostPortRangeEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined. Deprecated: use HostPortRange from policy API Group instead.
-}


type alias IoK8sApiExtensionsV1beta1HostPortRange =
    { max : Int
    , min : Int
    }


ioK8sApiExtensionsV1beta1HostPortRangeDecoder : Decoder IoK8sApiExtensionsV1beta1HostPortRange
ioK8sApiExtensionsV1beta1HostPortRangeDecoder =
    decode IoK8sApiExtensionsV1beta1HostPortRange
        |> required "max" Decode.int
        |> required "min" Decode.int



ioK8sApiExtensionsV1beta1HostPortRangeEncoder : IoK8sApiExtensionsV1beta1HostPortRange -> Encode.Value
ioK8sApiExtensionsV1beta1HostPortRangeEncoder model =
    Encode.object
        [ ( "max", Encode.int model.max )
        , ( "min", Encode.int model.min )
        ]


