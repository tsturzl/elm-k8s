{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LimitRange exposing (IoK8sApiCoreV1LimitRange, ioK8sApiCoreV1LimitRangeDecoder, ioK8sApiCoreV1LimitRangeEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiCoreV1LimitRangeSpec exposing (IoK8sApiCoreV1LimitRangeSpec, ioK8sApiCoreV1LimitRangeSpecDecoder, ioK8sApiCoreV1LimitRangeSpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LimitRange sets resource usage limits for each kind of resource in a Namespace.
-}


type alias IoK8sApiCoreV1LimitRange =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiCoreV1LimitRangeSpec
    }


ioK8sApiCoreV1LimitRangeDecoder : Decoder IoK8sApiCoreV1LimitRange
ioK8sApiCoreV1LimitRangeDecoder =
    decode IoK8sApiCoreV1LimitRange
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiCoreV1LimitRangeSpecDecoder) Nothing



ioK8sApiCoreV1LimitRangeEncoder : IoK8sApiCoreV1LimitRange -> Encode.Value
ioK8sApiCoreV1LimitRangeEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiCoreV1LimitRangeSpecEncoder model.spec) )
        ]


