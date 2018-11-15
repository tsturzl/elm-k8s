{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiPolicyV1beta1Eviction exposing (IoK8sApiPolicyV1beta1Eviction, ioK8sApiPolicyV1beta1EvictionDecoder, ioK8sApiPolicyV1beta1EvictionEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1DeleteOptions exposing (IoK8sApimachineryPkgApisMetaV1DeleteOptions, ioK8sApimachineryPkgApisMetaV1DeleteOptionsDecoder, ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
-}


type alias IoK8sApiPolicyV1beta1Eviction =
    { apiVersion : Maybe String
    , deleteOptions : Maybe IoK8sApimachineryPkgApisMetaV1DeleteOptions
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    }


ioK8sApiPolicyV1beta1EvictionDecoder : Decoder IoK8sApiPolicyV1beta1Eviction
ioK8sApiPolicyV1beta1EvictionDecoder =
    decode IoK8sApiPolicyV1beta1Eviction
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "deleteOptions" (Decode.nullable ioK8sApimachineryPkgApisMetaV1DeleteOptionsDecoder) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing



ioK8sApiPolicyV1beta1EvictionEncoder : IoK8sApiPolicyV1beta1Eviction -> Encode.Value
ioK8sApiPolicyV1beta1EvictionEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "deleteOptions", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder model.deleteOptions) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        ]


