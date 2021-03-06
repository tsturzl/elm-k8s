{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Affinity exposing (IoK8sApiCoreV1Affinity, ioK8sApiCoreV1AffinityDecoder, ioK8sApiCoreV1AffinityEncoder)

import Data.IoK8sApiCoreV1NodeAffinity exposing (IoK8sApiCoreV1NodeAffinity, ioK8sApiCoreV1NodeAffinityDecoder, ioK8sApiCoreV1NodeAffinityEncoder)
import Data.IoK8sApiCoreV1PodAffinity exposing (IoK8sApiCoreV1PodAffinity, ioK8sApiCoreV1PodAffinityDecoder, ioK8sApiCoreV1PodAffinityEncoder)
import Data.IoK8sApiCoreV1PodAntiAffinity exposing (IoK8sApiCoreV1PodAntiAffinity, ioK8sApiCoreV1PodAntiAffinityDecoder, ioK8sApiCoreV1PodAntiAffinityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Affinity is a group of affinity scheduling rules.
-}


type alias IoK8sApiCoreV1Affinity =
    { nodeAffinity : Maybe IoK8sApiCoreV1NodeAffinity
    , podAffinity : Maybe IoK8sApiCoreV1PodAffinity
    , podAntiAffinity : Maybe IoK8sApiCoreV1PodAntiAffinity
    }


ioK8sApiCoreV1AffinityDecoder : Decoder IoK8sApiCoreV1Affinity
ioK8sApiCoreV1AffinityDecoder =
    decode IoK8sApiCoreV1Affinity
        |> optional "nodeAffinity" (Decode.nullable ioK8sApiCoreV1NodeAffinityDecoder) Nothing
        |> optional "podAffinity" (Decode.nullable ioK8sApiCoreV1PodAffinityDecoder) Nothing
        |> optional "podAntiAffinity" (Decode.nullable ioK8sApiCoreV1PodAntiAffinityDecoder) Nothing



ioK8sApiCoreV1AffinityEncoder : IoK8sApiCoreV1Affinity -> Encode.Value
ioK8sApiCoreV1AffinityEncoder model =
    Encode.object
        [ ( "nodeAffinity", withDefault Encode.null (map ioK8sApiCoreV1NodeAffinityEncoder model.nodeAffinity) )
        , ( "podAffinity", withDefault Encode.null (map ioK8sApiCoreV1PodAffinityEncoder model.podAffinity) )
        , ( "podAntiAffinity", withDefault Encode.null (map ioK8sApiCoreV1PodAntiAffinityEncoder model.podAntiAffinity) )
        ]


