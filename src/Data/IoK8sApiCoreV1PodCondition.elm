{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PodCondition exposing (IoK8sApiCoreV1PodCondition, ioK8sApiCoreV1PodConditionDecoder, ioK8sApiCoreV1PodConditionEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodCondition contains details for the current condition of this pod.
-}


type alias IoK8sApiCoreV1PodCondition =
    { lastProbeTime : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , lastTransitionTime : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , message : Maybe String
    , reason : Maybe String
    , status : String
    , type_ : String
    }


ioK8sApiCoreV1PodConditionDecoder : Decoder IoK8sApiCoreV1PodCondition
ioK8sApiCoreV1PodConditionDecoder =
    decode IoK8sApiCoreV1PodCondition
        |> optional "lastProbeTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "lastTransitionTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing
        |> optional "reason" (Decode.nullable Decode.string) Nothing
        |> required "status" Decode.string
        |> required "type" Decode.string



ioK8sApiCoreV1PodConditionEncoder : IoK8sApiCoreV1PodCondition -> Encode.Value
ioK8sApiCoreV1PodConditionEncoder model =
    Encode.object
        [ ( "lastProbeTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastProbeTime) )
        , ( "lastTransitionTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastTransitionTime) )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        , ( "reason", withDefault Encode.null (map Encode.string model.reason) )
        , ( "status", Encode.string model.status )
        , ( "type", Encode.string model.type_ )
        ]


