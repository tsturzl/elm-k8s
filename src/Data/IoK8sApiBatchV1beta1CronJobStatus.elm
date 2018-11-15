{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiBatchV1beta1CronJobStatus exposing (IoK8sApiBatchV1beta1CronJobStatus, ioK8sApiBatchV1beta1CronJobStatusDecoder, ioK8sApiBatchV1beta1CronJobStatusEncoder)

import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CronJobStatus represents the current state of a cron job.
-}


type alias IoK8sApiBatchV1beta1CronJobStatus =
    { active : Maybe (List IoK8sApiCoreV1ObjectReference)
    , lastScheduleTime : Maybe IoK8sApimachineryPkgApisMetaV1Time
    }


ioK8sApiBatchV1beta1CronJobStatusDecoder : Decoder IoK8sApiBatchV1beta1CronJobStatus
ioK8sApiBatchV1beta1CronJobStatusDecoder =
    decode IoK8sApiBatchV1beta1CronJobStatus
        |> optional "active" (Decode.nullable (Decode.list ioK8sApiCoreV1ObjectReferenceDecoder)) Nothing
        |> optional "lastScheduleTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing



ioK8sApiBatchV1beta1CronJobStatusEncoder : IoK8sApiBatchV1beta1CronJobStatus -> Encode.Value
ioK8sApiBatchV1beta1CronJobStatusEncoder model =
    Encode.object
        [ ( "active", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1ObjectReferenceEncoder) model.active) )
        , ( "lastScheduleTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastScheduleTime) )
        ]


