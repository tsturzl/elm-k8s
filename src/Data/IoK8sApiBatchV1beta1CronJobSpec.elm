{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiBatchV1beta1CronJobSpec exposing (IoK8sApiBatchV1beta1CronJobSpec, ioK8sApiBatchV1beta1CronJobSpecDecoder, ioK8sApiBatchV1beta1CronJobSpecEncoder)

import Data.IoK8sApiBatchV1beta1JobTemplateSpec exposing (IoK8sApiBatchV1beta1JobTemplateSpec, ioK8sApiBatchV1beta1JobTemplateSpecDecoder, ioK8sApiBatchV1beta1JobTemplateSpecEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CronJobSpec describes how the job execution will look like and when it will actually run.
-}


type alias IoK8sApiBatchV1beta1CronJobSpec =
    { concurrencyPolicy : Maybe String
    , failedJobsHistoryLimit : Maybe Int
    , jobTemplate : IoK8sApiBatchV1beta1JobTemplateSpec
    , schedule : String
    , startingDeadlineSeconds : Maybe Int
    , successfulJobsHistoryLimit : Maybe Int
    , suspend : Maybe Bool
    }


ioK8sApiBatchV1beta1CronJobSpecDecoder : Decoder IoK8sApiBatchV1beta1CronJobSpec
ioK8sApiBatchV1beta1CronJobSpecDecoder =
    decode IoK8sApiBatchV1beta1CronJobSpec
        |> optional "concurrencyPolicy" (Decode.nullable Decode.string) Nothing
        |> optional "failedJobsHistoryLimit" (Decode.nullable Decode.int) Nothing
        |> required "jobTemplate" ioK8sApiBatchV1beta1JobTemplateSpecDecoder
        |> required "schedule" Decode.string
        |> optional "startingDeadlineSeconds" (Decode.nullable Decode.int) Nothing
        |> optional "successfulJobsHistoryLimit" (Decode.nullable Decode.int) Nothing
        |> optional "suspend" (Decode.nullable Decode.bool) Nothing



ioK8sApiBatchV1beta1CronJobSpecEncoder : IoK8sApiBatchV1beta1CronJobSpec -> Encode.Value
ioK8sApiBatchV1beta1CronJobSpecEncoder model =
    Encode.object
        [ ( "concurrencyPolicy", withDefault Encode.null (map Encode.string model.concurrencyPolicy) )
        , ( "failedJobsHistoryLimit", withDefault Encode.null (map Encode.int model.failedJobsHistoryLimit) )
        , ( "jobTemplate", ioK8sApiBatchV1beta1JobTemplateSpecEncoder model.jobTemplate )
        , ( "schedule", Encode.string model.schedule )
        , ( "startingDeadlineSeconds", withDefault Encode.null (map Encode.int model.startingDeadlineSeconds) )
        , ( "successfulJobsHistoryLimit", withDefault Encode.null (map Encode.int model.successfulJobsHistoryLimit) )
        , ( "suspend", withDefault Encode.null (map Encode.bool model.suspend) )
        ]


