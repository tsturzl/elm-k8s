{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Node exposing (IoK8sApiCoreV1Node, ioK8sApiCoreV1NodeDecoder, ioK8sApiCoreV1NodeEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiCoreV1NodeSpec exposing (IoK8sApiCoreV1NodeSpec, ioK8sApiCoreV1NodeSpecDecoder, ioK8sApiCoreV1NodeSpecEncoder)
import Data.IoK8sApiCoreV1NodeStatus exposing (IoK8sApiCoreV1NodeStatus, ioK8sApiCoreV1NodeStatusDecoder, ioK8sApiCoreV1NodeStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).
-}


type alias IoK8sApiCoreV1Node =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiCoreV1NodeSpec
    , status : Maybe IoK8sApiCoreV1NodeStatus
    }


ioK8sApiCoreV1NodeDecoder : Decoder IoK8sApiCoreV1Node
ioK8sApiCoreV1NodeDecoder =
    decode IoK8sApiCoreV1Node
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiCoreV1NodeSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiCoreV1NodeStatusDecoder) Nothing



ioK8sApiCoreV1NodeEncoder : IoK8sApiCoreV1Node -> Encode.Value
ioK8sApiCoreV1NodeEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiCoreV1NodeSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiCoreV1NodeStatusEncoder model.status) )
        ]


