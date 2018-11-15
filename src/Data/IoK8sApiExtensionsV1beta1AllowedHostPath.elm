{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1AllowedHostPath exposing (IoK8sApiExtensionsV1beta1AllowedHostPath, ioK8sApiExtensionsV1beta1AllowedHostPathDecoder, ioK8sApiExtensionsV1beta1AllowedHostPathEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   AllowedHostPath defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined. Deprecated: use AllowedHostPath from policy API Group instead.
-}


type alias IoK8sApiExtensionsV1beta1AllowedHostPath =
    { pathPrefix : Maybe String
    , readOnly : Maybe Bool
    }


ioK8sApiExtensionsV1beta1AllowedHostPathDecoder : Decoder IoK8sApiExtensionsV1beta1AllowedHostPath
ioK8sApiExtensionsV1beta1AllowedHostPathDecoder =
    decode IoK8sApiExtensionsV1beta1AllowedHostPath
        |> optional "pathPrefix" (Decode.nullable Decode.string) Nothing
        |> optional "readOnly" (Decode.nullable Decode.bool) Nothing



ioK8sApiExtensionsV1beta1AllowedHostPathEncoder : IoK8sApiExtensionsV1beta1AllowedHostPath -> Encode.Value
ioK8sApiExtensionsV1beta1AllowedHostPathEncoder model =
    Encode.object
        [ ( "pathPrefix", withDefault Encode.null (map Encode.string model.pathPrefix) )
        , ( "readOnly", withDefault Encode.null (map Encode.bool model.readOnly) )
        ]

