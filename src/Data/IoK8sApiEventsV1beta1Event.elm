{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiEventsV1beta1Event exposing (IoK8sApiEventsV1beta1Event, ioK8sApiEventsV1beta1EventDecoder, ioK8sApiEventsV1beta1EventEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Data.IoK8sApiCoreV1EventSource exposing (IoK8sApiCoreV1EventSource, ioK8sApiCoreV1EventSourceDecoder, ioK8sApiCoreV1EventSourceEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1MicroTime exposing (IoK8sApimachineryPkgApisMetaV1MicroTime, ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder, ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Data.IoK8sApiEventsV1beta1EventSeries exposing (IoK8sApiEventsV1beta1EventSeries, ioK8sApiEventsV1beta1EventSeriesDecoder, ioK8sApiEventsV1beta1EventSeriesEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
-}


type alias IoK8sApiEventsV1beta1Event =
    { action : Maybe String
    , apiVersion : Maybe String
    , deprecatedCount : Maybe Int
    , deprecatedFirstTimestamp : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , deprecatedLastTimestamp : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , deprecatedSource : Maybe IoK8sApiCoreV1EventSource
    , eventTime : IoK8sApimachineryPkgApisMetaV1MicroTime
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , note : Maybe String
    , reason : Maybe String
    , regarding : Maybe IoK8sApiCoreV1ObjectReference
    , related : Maybe IoK8sApiCoreV1ObjectReference
    , reportingController : Maybe String
    , reportingInstance : Maybe String
    , series : Maybe IoK8sApiEventsV1beta1EventSeries
    , type_ : Maybe String
    }


ioK8sApiEventsV1beta1EventDecoder : Decoder IoK8sApiEventsV1beta1Event
ioK8sApiEventsV1beta1EventDecoder =
    decode IoK8sApiEventsV1beta1Event
        |> optional "action" (Decode.nullable Decode.string) Nothing
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "deprecatedCount" (Decode.nullable Decode.int) Nothing
        |> optional "deprecatedFirstTimestamp" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "deprecatedLastTimestamp" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "deprecatedSource" (Decode.nullable ioK8sApiCoreV1EventSourceDecoder) Nothing
        |> required "eventTime" ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> optional "note" (Decode.nullable Decode.string) Nothing
        |> optional "reason" (Decode.nullable Decode.string) Nothing
        |> optional "regarding" (Decode.nullable ioK8sApiCoreV1ObjectReferenceDecoder) Nothing
        |> optional "related" (Decode.nullable ioK8sApiCoreV1ObjectReferenceDecoder) Nothing
        |> optional "reportingController" (Decode.nullable Decode.string) Nothing
        |> optional "reportingInstance" (Decode.nullable Decode.string) Nothing
        |> optional "series" (Decode.nullable ioK8sApiEventsV1beta1EventSeriesDecoder) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing



ioK8sApiEventsV1beta1EventEncoder : IoK8sApiEventsV1beta1Event -> Encode.Value
ioK8sApiEventsV1beta1EventEncoder model =
    Encode.object
        [ ( "action", withDefault Encode.null (map Encode.string model.action) )
        , ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "deprecatedCount", withDefault Encode.null (map Encode.int model.deprecatedCount) )
        , ( "deprecatedFirstTimestamp", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.deprecatedFirstTimestamp) )
        , ( "deprecatedLastTimestamp", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.deprecatedLastTimestamp) )
        , ( "deprecatedSource", withDefault Encode.null (map ioK8sApiCoreV1EventSourceEncoder model.deprecatedSource) )
        , ( "eventTime", ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder model.eventTime )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "note", withDefault Encode.null (map Encode.string model.note) )
        , ( "reason", withDefault Encode.null (map Encode.string model.reason) )
        , ( "regarding", withDefault Encode.null (map ioK8sApiCoreV1ObjectReferenceEncoder model.regarding) )
        , ( "related", withDefault Encode.null (map ioK8sApiCoreV1ObjectReferenceEncoder model.related) )
        , ( "reportingController", withDefault Encode.null (map Encode.string model.reportingController) )
        , ( "reportingInstance", withDefault Encode.null (map Encode.string model.reportingInstance) )
        , ( "series", withDefault Encode.null (map ioK8sApiEventsV1beta1EventSeriesEncoder model.series) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        ]


