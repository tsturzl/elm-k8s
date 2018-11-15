{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1NetworkPolicy exposing (IoK8sApiExtensionsV1beta1NetworkPolicy, ioK8sApiExtensionsV1beta1NetworkPolicyDecoder, ioK8sApiExtensionsV1beta1NetworkPolicyEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiExtensionsV1beta1NetworkPolicySpec exposing (IoK8sApiExtensionsV1beta1NetworkPolicySpec, ioK8sApiExtensionsV1beta1NetworkPolicySpecDecoder, ioK8sApiExtensionsV1beta1NetworkPolicySpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DEPRECATED 1.9 - This group version of NetworkPolicy is deprecated by networking/v1/NetworkPolicy. NetworkPolicy describes what network traffic is allowed for a set of Pods
-}


type alias IoK8sApiExtensionsV1beta1NetworkPolicy =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiExtensionsV1beta1NetworkPolicySpec
    }


ioK8sApiExtensionsV1beta1NetworkPolicyDecoder : Decoder IoK8sApiExtensionsV1beta1NetworkPolicy
ioK8sApiExtensionsV1beta1NetworkPolicyDecoder =
    decode IoK8sApiExtensionsV1beta1NetworkPolicy
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiExtensionsV1beta1NetworkPolicySpecDecoder) Nothing



ioK8sApiExtensionsV1beta1NetworkPolicyEncoder : IoK8sApiExtensionsV1beta1NetworkPolicy -> Encode.Value
ioK8sApiExtensionsV1beta1NetworkPolicyEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiExtensionsV1beta1NetworkPolicySpecEncoder model.spec) )
        ]


