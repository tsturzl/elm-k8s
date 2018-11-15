{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiBatchV1beta1CronJob exposing (IoK8sApiBatchV1beta1CronJob, ioK8sApiBatchV1beta1CronJobDecoder, ioK8sApiBatchV1beta1CronJobEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiBatchV1beta1CronJobSpec exposing (IoK8sApiBatchV1beta1CronJobSpec, ioK8sApiBatchV1beta1CronJobSpecDecoder, ioK8sApiBatchV1beta1CronJobSpecEncoder)
import Data.IoK8sApiBatchV1beta1CronJobStatus exposing (IoK8sApiBatchV1beta1CronJobStatus, ioK8sApiBatchV1beta1CronJobStatusDecoder, ioK8sApiBatchV1beta1CronJobStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CronJob represents the configuration of a single cron job.
-}


type alias IoK8sApiBatchV1beta1CronJob =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : Maybe IoK8sApiBatchV1beta1CronJobSpec
    , status : Maybe IoK8sApiBatchV1beta1CronJobStatus
    }


ioK8sApiBatchV1beta1CronJobDecoder : Decoder IoK8sApiBatchV1beta1CronJob
ioK8sApiBatchV1beta1CronJobDecoder =
    decode IoK8sApiBatchV1beta1CronJob
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "spec" (Decode.nullable ioK8sApiBatchV1beta1CronJobSpecDecoder) Nothing
        |> optional "status" (Decode.nullable ioK8sApiBatchV1beta1CronJobStatusDecoder) Nothing



ioK8sApiBatchV1beta1CronJobEncoder : IoK8sApiBatchV1beta1CronJob -> Encode.Value
ioK8sApiBatchV1beta1CronJobEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", withDefault Encode.null (map ioK8sApiBatchV1beta1CronJobSpecEncoder model.spec) )
        , ( "status", withDefault Encode.null (map ioK8sApiBatchV1beta1CronJobStatusEncoder model.status) )
        ]


