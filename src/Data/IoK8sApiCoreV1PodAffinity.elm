{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PodAffinity exposing (IoK8sApiCoreV1PodAffinity, ioK8sApiCoreV1PodAffinityDecoder, ioK8sApiCoreV1PodAffinityEncoder)

import Data.IoK8sApiCoreV1WeightedPodAffinityTerm exposing (IoK8sApiCoreV1WeightedPodAffinityTerm, ioK8sApiCoreV1WeightedPodAffinityTermDecoder, ioK8sApiCoreV1WeightedPodAffinityTermEncoder)
import Data.IoK8sApiCoreV1PodAffinityTerm exposing (IoK8sApiCoreV1PodAffinityTerm, ioK8sApiCoreV1PodAffinityTermDecoder, ioK8sApiCoreV1PodAffinityTermEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Pod affinity is a group of inter pod affinity scheduling rules.
-}


type alias IoK8sApiCoreV1PodAffinity =
    { preferredDuringSchedulingIgnoredDuringExecution : Maybe (List IoK8sApiCoreV1WeightedPodAffinityTerm)
    , requiredDuringSchedulingIgnoredDuringExecution : Maybe (List IoK8sApiCoreV1PodAffinityTerm)
    }


ioK8sApiCoreV1PodAffinityDecoder : Decoder IoK8sApiCoreV1PodAffinity
ioK8sApiCoreV1PodAffinityDecoder =
    decode IoK8sApiCoreV1PodAffinity
        |> optional "preferredDuringSchedulingIgnoredDuringExecution" (Decode.nullable (Decode.list ioK8sApiCoreV1WeightedPodAffinityTermDecoder)) Nothing
        |> optional "requiredDuringSchedulingIgnoredDuringExecution" (Decode.nullable (Decode.list ioK8sApiCoreV1PodAffinityTermDecoder)) Nothing



ioK8sApiCoreV1PodAffinityEncoder : IoK8sApiCoreV1PodAffinity -> Encode.Value
ioK8sApiCoreV1PodAffinityEncoder model =
    Encode.object
        [ ( "preferredDuringSchedulingIgnoredDuringExecution", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1WeightedPodAffinityTermEncoder) model.preferredDuringSchedulingIgnoredDuringExecution) )
        , ( "requiredDuringSchedulingIgnoredDuringExecution", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1PodAffinityTermEncoder) model.requiredDuringSchedulingIgnoredDuringExecution) )
        ]

