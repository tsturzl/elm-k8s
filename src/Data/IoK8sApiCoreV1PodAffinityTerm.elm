{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PodAffinityTerm exposing (IoK8sApiCoreV1PodAffinityTerm, ioK8sApiCoreV1PodAffinityTermDecoder, ioK8sApiCoreV1PodAffinityTermEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
-}


type alias IoK8sApiCoreV1PodAffinityTerm =
    { labelSelector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    , namespaces : Maybe (List String)
    , topologyKey : String
    }


ioK8sApiCoreV1PodAffinityTermDecoder : Decoder IoK8sApiCoreV1PodAffinityTerm
ioK8sApiCoreV1PodAffinityTermDecoder =
    decode IoK8sApiCoreV1PodAffinityTerm
        |> optional "labelSelector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing
        |> optional "namespaces" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> required "topologyKey" Decode.string



ioK8sApiCoreV1PodAffinityTermEncoder : IoK8sApiCoreV1PodAffinityTerm -> Encode.Value
ioK8sApiCoreV1PodAffinityTermEncoder model =
    Encode.object
        [ ( "labelSelector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.labelSelector) )
        , ( "namespaces", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.namespaces) )
        , ( "topologyKey", Encode.string model.topologyKey )
        ]


