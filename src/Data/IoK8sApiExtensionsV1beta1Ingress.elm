{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1Ingress exposing (IoK8sApiExtensionsV1beta1Ingress, ioK8sApiExtensionsV1beta1IngressDecoder, ioK8sApiExtensionsV1beta1IngressEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiExtensionsV1beta1IngressSpec exposing (IoK8sApiExtensionsV1beta1IngressSpec, ioK8sApiExtensionsV1beta1IngressSpecDecoder, ioK8sApiExtensionsV1beta1IngressSpecEncoder)
import Data.IoK8sApiExtensionsV1beta1IngressStatus exposing (IoK8sApiExtensionsV1beta1IngressStatus, ioK8sApiExtensionsV1beta1IngressStatusDecoder, ioK8sApiExtensionsV1beta1IngressStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
-}


type alias IoK8sApiExtensionsV1beta1Ingress =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiExtensionsV1beta1IngressSpec
    , status : Maybe IoK8sApiExtensionsV1beta1IngressStatus
    }


ioK8sApiExtensionsV1beta1IngressDecoder : Decoder IoK8sApiExtensionsV1beta1Ingress
ioK8sApiExtensionsV1beta1IngressDecoder =
    decode IoK8sApiExtensionsV1beta1Ingress
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiExtensionsV1beta1IngressSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiExtensionsV1beta1IngressStatusDecoder) Nothing



ioK8sApiExtensionsV1beta1IngressEncoder : IoK8sApiExtensionsV1beta1Ingress -> Encode.Value
ioK8sApiExtensionsV1beta1IngressEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiExtensionsV1beta1IngressSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiExtensionsV1beta1IngressStatusEncoder model.status) )
        ]


