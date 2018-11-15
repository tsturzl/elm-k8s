{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1ScaleSpec exposing (IoK8sApiExtensionsV1beta1ScaleSpec, ioK8sApiExtensionsV1beta1ScaleSpecDecoder, ioK8sApiExtensionsV1beta1ScaleSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   describes the attributes of a scale subresource
-}


type alias IoK8sApiExtensionsV1beta1ScaleSpec =
    { replicas : Maybe Int
    }


ioK8sApiExtensionsV1beta1ScaleSpecDecoder : Decoder IoK8sApiExtensionsV1beta1ScaleSpec
ioK8sApiExtensionsV1beta1ScaleSpecDecoder =
    decode IoK8sApiExtensionsV1beta1ScaleSpec
        |> optional "replicas" (Decode.nullable Decode.int) Nothing



ioK8sApiExtensionsV1beta1ScaleSpecEncoder : IoK8sApiExtensionsV1beta1ScaleSpec -> Encode.Value
ioK8sApiExtensionsV1beta1ScaleSpecEncoder model =
    Encode.object
        [ ( "replicas", withDefault Encode.null (map Encode.int model.replicas) )
        ]


