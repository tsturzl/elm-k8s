{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ComponentStatus exposing (IoK8sApiCoreV1ComponentStatus, ioK8sApiCoreV1ComponentStatusDecoder, ioK8sApiCoreV1ComponentStatusEncoder)

import Data.IoK8sApiCoreV1ComponentCondition exposing (IoK8sApiCoreV1ComponentCondition, ioK8sApiCoreV1ComponentConditionDecoder, ioK8sApiCoreV1ComponentConditionEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ComponentStatus (and ComponentStatusList) holds the cluster validation info.
-}


type alias IoK8sApiCoreV1ComponentStatus =
    { apiVersion : Maybe String
    , conditions : Maybe (List IoK8sApiCoreV1ComponentCondition)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    }


ioK8sApiCoreV1ComponentStatusDecoder : Decoder IoK8sApiCoreV1ComponentStatus
ioK8sApiCoreV1ComponentStatusDecoder =
    decode IoK8sApiCoreV1ComponentStatus
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiCoreV1ComponentConditionDecoder)) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing



ioK8sApiCoreV1ComponentStatusEncoder : IoK8sApiCoreV1ComponentStatus -> Encode.Value
ioK8sApiCoreV1ComponentStatusEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1ComponentConditionEncoder) model.conditions) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        ]


