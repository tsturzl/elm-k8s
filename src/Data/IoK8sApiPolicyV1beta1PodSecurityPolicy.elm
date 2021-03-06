{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiPolicyV1beta1PodSecurityPolicy exposing (IoK8sApiPolicyV1beta1PodSecurityPolicy, ioK8sApiPolicyV1beta1PodSecurityPolicyDecoder, ioK8sApiPolicyV1beta1PodSecurityPolicyEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiPolicyV1beta1PodSecurityPolicySpec exposing (IoK8sApiPolicyV1beta1PodSecurityPolicySpec, ioK8sApiPolicyV1beta1PodSecurityPolicySpecDecoder, ioK8sApiPolicyV1beta1PodSecurityPolicySpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodSecurityPolicy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
-}


type alias IoK8sApiPolicyV1beta1PodSecurityPolicy =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiPolicyV1beta1PodSecurityPolicySpec
    }


ioK8sApiPolicyV1beta1PodSecurityPolicyDecoder : Decoder IoK8sApiPolicyV1beta1PodSecurityPolicy
ioK8sApiPolicyV1beta1PodSecurityPolicyDecoder =
    decode IoK8sApiPolicyV1beta1PodSecurityPolicy
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiPolicyV1beta1PodSecurityPolicySpecDecoder) Nothing



ioK8sApiPolicyV1beta1PodSecurityPolicyEncoder : IoK8sApiPolicyV1beta1PodSecurityPolicy -> Encode.Value
ioK8sApiPolicyV1beta1PodSecurityPolicyEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiPolicyV1beta1PodSecurityPolicySpecEncoder model.spec) )
        ]


