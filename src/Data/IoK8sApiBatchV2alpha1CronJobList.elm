{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiBatchV2alpha1CronJobList exposing (IoK8sApiBatchV2alpha1CronJobList, ioK8sApiBatchV2alpha1CronJobListDecoder, ioK8sApiBatchV2alpha1CronJobListEncoder)

import Data.IoK8sApiBatchV2alpha1CronJob exposing (IoK8sApiBatchV2alpha1CronJob, ioK8sApiBatchV2alpha1CronJobDecoder, ioK8sApiBatchV2alpha1CronJobEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CronJobList is a collection of cron jobs.
-}


type alias IoK8sApiBatchV2alpha1CronJobList =
    { apiVersion : Maybe String
    , items : (List IoK8sApiBatchV2alpha1CronJob)
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    }


ioK8sApiBatchV2alpha1CronJobListDecoder : Decoder IoK8sApiBatchV2alpha1CronJobList
ioK8sApiBatchV2alpha1CronJobListDecoder =
    decode IoK8sApiBatchV2alpha1CronJobList
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "items" (Decode.list ioK8sApiBatchV2alpha1CronJobDecoder)
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing



ioK8sApiBatchV2alpha1CronJobListEncoder : IoK8sApiBatchV2alpha1CronJobList -> Encode.Value
ioK8sApiBatchV2alpha1CronJobListEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "items", (Encode.list << List.map ioK8sApiBatchV2alpha1CronJobEncoder) model.items )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        ]

