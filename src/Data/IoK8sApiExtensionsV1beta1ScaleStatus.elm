{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1ScaleStatus exposing (IoK8sApiExtensionsV1beta1ScaleStatus, ioK8sApiExtensionsV1beta1ScaleStatusDecoder, ioK8sApiExtensionsV1beta1ScaleStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   represents the current status of a scale subresource.
-}


type alias IoK8sApiExtensionsV1beta1ScaleStatus =
    { replicas : Int
    , selector : Maybe (List String)
    , targetSelector : Maybe String
    }


ioK8sApiExtensionsV1beta1ScaleStatusDecoder : Decoder IoK8sApiExtensionsV1beta1ScaleStatus
ioK8sApiExtensionsV1beta1ScaleStatusDecoder =
    decode IoK8sApiExtensionsV1beta1ScaleStatus
        |> required "replicas" Decode.int
        |> optional "selector" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "targetSelector" (Decode.nullable Decode.string) Nothing



ioK8sApiExtensionsV1beta1ScaleStatusEncoder : IoK8sApiExtensionsV1beta1ScaleStatus -> Encode.Value
ioK8sApiExtensionsV1beta1ScaleStatusEncoder model =
    Encode.object
        [ ( "replicas", Encode.int model.replicas )
        , ( "selector", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.selector) )
        , ( "targetSelector", withDefault Encode.null (map Encode.string model.targetSelector) )
        ]


