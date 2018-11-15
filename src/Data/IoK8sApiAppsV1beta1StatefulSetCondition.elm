{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1StatefulSetCondition exposing (IoK8sApiAppsV1beta1StatefulSetCondition, ioK8sApiAppsV1beta1StatefulSetConditionDecoder, ioK8sApiAppsV1beta1StatefulSetConditionEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   StatefulSetCondition describes the state of a statefulset at a certain point.
-}


type alias IoK8sApiAppsV1beta1StatefulSetCondition =
    { lastTransitionTime : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , message : Maybe String
    , reason : Maybe String
    , status : String
    , type_ : String
    }


ioK8sApiAppsV1beta1StatefulSetConditionDecoder : Decoder IoK8sApiAppsV1beta1StatefulSetCondition
ioK8sApiAppsV1beta1StatefulSetConditionDecoder =
    decode IoK8sApiAppsV1beta1StatefulSetCondition
        |> optional "lastTransitionTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing
        |> optional "reason" (Decode.nullable Decode.string) Nothing
        |> required "status" Decode.string
        |> required "type" Decode.string



ioK8sApiAppsV1beta1StatefulSetConditionEncoder : IoK8sApiAppsV1beta1StatefulSetCondition -> Encode.Value
ioK8sApiAppsV1beta1StatefulSetConditionEncoder model =
    Encode.object
        [ ( "lastTransitionTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastTransitionTime) )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        , ( "reason", withDefault Encode.null (map Encode.string model.reason) )
        , ( "status", Encode.string model.status )
        , ( "type", Encode.string model.type_ )
        ]


