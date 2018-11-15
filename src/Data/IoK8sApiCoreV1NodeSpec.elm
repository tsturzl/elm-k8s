{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NodeSpec exposing (IoK8sApiCoreV1NodeSpec, ioK8sApiCoreV1NodeSpecDecoder, ioK8sApiCoreV1NodeSpecEncoder)

import Data.IoK8sApiCoreV1NodeConfigSource exposing (IoK8sApiCoreV1NodeConfigSource, ioK8sApiCoreV1NodeConfigSourceDecoder, ioK8sApiCoreV1NodeConfigSourceEncoder)
import Data.IoK8sApiCoreV1Taint exposing (IoK8sApiCoreV1Taint, ioK8sApiCoreV1TaintDecoder, ioK8sApiCoreV1TaintEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   NodeSpec describes the attributes that a node is created with.
-}


type alias IoK8sApiCoreV1NodeSpec =
    { configSource : Maybe IoK8sApiCoreV1NodeConfigSource
    , externalID : Maybe String
    , podCIDR : Maybe String
    , providerID : Maybe String
    , taints : Maybe (List IoK8sApiCoreV1Taint)
    , unschedulable : Maybe Bool
    }


ioK8sApiCoreV1NodeSpecDecoder : Decoder IoK8sApiCoreV1NodeSpec
ioK8sApiCoreV1NodeSpecDecoder =
    decode IoK8sApiCoreV1NodeSpec
        |> optional "configSource" (Decode.nullable ioK8sApiCoreV1NodeConfigSourceDecoder) Nothing
        |> optional "externalID" (Decode.nullable Decode.string) Nothing
        |> optional "podCIDR" (Decode.nullable Decode.string) Nothing
        |> optional "providerID" (Decode.nullable Decode.string) Nothing
        |> optional "taints" (Decode.nullable (Decode.list ioK8sApiCoreV1TaintDecoder)) Nothing
        |> optional "unschedulable" (Decode.nullable Decode.bool) Nothing



ioK8sApiCoreV1NodeSpecEncoder : IoK8sApiCoreV1NodeSpec -> Encode.Value
ioK8sApiCoreV1NodeSpecEncoder model =
    Encode.object
        [ ( "configSource", withDefault Encode.null (map ioK8sApiCoreV1NodeConfigSourceEncoder model.configSource) )
        , ( "externalID", withDefault Encode.null (map Encode.string model.externalID) )
        , ( "podCIDR", withDefault Encode.null (map Encode.string model.podCIDR) )
        , ( "providerID", withDefault Encode.null (map Encode.string model.providerID) )
        , ( "taints", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1TaintEncoder) model.taints) )
        , ( "unschedulable", withDefault Encode.null (map Encode.bool model.unschedulable) )
        ]

