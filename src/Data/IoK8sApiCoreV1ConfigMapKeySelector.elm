{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ConfigMapKeySelector exposing (IoK8sApiCoreV1ConfigMapKeySelector, ioK8sApiCoreV1ConfigMapKeySelectorDecoder, ioK8sApiCoreV1ConfigMapKeySelectorEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Selects a key from a ConfigMap.
-}


type alias IoK8sApiCoreV1ConfigMapKeySelector =
    { key : String
    , name : Maybe String
    , optional : Maybe Bool
    }


ioK8sApiCoreV1ConfigMapKeySelectorDecoder : Decoder IoK8sApiCoreV1ConfigMapKeySelector
ioK8sApiCoreV1ConfigMapKeySelectorDecoder =
    decode IoK8sApiCoreV1ConfigMapKeySelector
        |> required "key" Decode.string
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "optional" (Decode.nullable Decode.bool) Nothing



ioK8sApiCoreV1ConfigMapKeySelectorEncoder : IoK8sApiCoreV1ConfigMapKeySelector -> Encode.Value
ioK8sApiCoreV1ConfigMapKeySelectorEncoder model =
    Encode.object
        [ ( "key", Encode.string model.key )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "optional", withDefault Encode.null (map Encode.bool model.optional) )
        ]


