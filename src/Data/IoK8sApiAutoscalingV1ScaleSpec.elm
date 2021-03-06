{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV1ScaleSpec exposing (IoK8sApiAutoscalingV1ScaleSpec, ioK8sApiAutoscalingV1ScaleSpecDecoder, ioK8sApiAutoscalingV1ScaleSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ScaleSpec describes the attributes of a scale subresource.
-}


type alias IoK8sApiAutoscalingV1ScaleSpec =
    { replicas : Maybe Int
    }


ioK8sApiAutoscalingV1ScaleSpecDecoder : Decoder IoK8sApiAutoscalingV1ScaleSpec
ioK8sApiAutoscalingV1ScaleSpecDecoder =
    decode IoK8sApiAutoscalingV1ScaleSpec
        |> optional "replicas" (Decode.nullable Decode.int) Nothing



ioK8sApiAutoscalingV1ScaleSpecEncoder : IoK8sApiAutoscalingV1ScaleSpec -> Encode.Value
ioK8sApiAutoscalingV1ScaleSpecEncoder model =
    Encode.object
        [ ( "replicas", withDefault Encode.null (map Encode.int model.replicas) )
        ]


