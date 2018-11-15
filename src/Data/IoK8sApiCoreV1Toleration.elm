{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Toleration exposing (IoK8sApiCoreV1Toleration, ioK8sApiCoreV1TolerationDecoder, ioK8sApiCoreV1TolerationEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
-}


type alias IoK8sApiCoreV1Toleration =
    { effect : Maybe String
    , key : Maybe String
    , operator : Maybe String
    , tolerationSeconds : Maybe Int
    , value : Maybe String
    }


ioK8sApiCoreV1TolerationDecoder : Decoder IoK8sApiCoreV1Toleration
ioK8sApiCoreV1TolerationDecoder =
    decode IoK8sApiCoreV1Toleration
        |> optional "effect" (Decode.nullable Decode.string) Nothing
        |> optional "key" (Decode.nullable Decode.string) Nothing
        |> optional "operator" (Decode.nullable Decode.string) Nothing
        |> optional "tolerationSeconds" (Decode.nullable Decode.int) Nothing
        |> optional "value" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1TolerationEncoder : IoK8sApiCoreV1Toleration -> Encode.Value
ioK8sApiCoreV1TolerationEncoder model =
    Encode.object
        [ ( "effect", withDefault Encode.null (map Encode.string model.effect) )
        , ( "key", withDefault Encode.null (map Encode.string model.key) )
        , ( "operator", withDefault Encode.null (map Encode.string model.operator) )
        , ( "tolerationSeconds", withDefault Encode.null (map Encode.int model.tolerationSeconds) )
        , ( "value", withDefault Encode.null (map Encode.string model.value) )
        ]

