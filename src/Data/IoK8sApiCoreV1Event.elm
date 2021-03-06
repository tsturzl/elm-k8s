{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Event exposing (IoK8sApiCoreV1Event, ioK8sApiCoreV1EventDecoder, ioK8sApiCoreV1EventEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1MicroTime exposing (IoK8sApimachineryPkgApisMetaV1MicroTime, ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder, ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)
import Data.IoK8sApiCoreV1EventSeries exposing (IoK8sApiCoreV1EventSeries, ioK8sApiCoreV1EventSeriesDecoder, ioK8sApiCoreV1EventSeriesEncoder)
import Data.IoK8sApiCoreV1EventSource exposing (IoK8sApiCoreV1EventSource, ioK8sApiCoreV1EventSourceDecoder, ioK8sApiCoreV1EventSourceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Event is a report of an event somewhere in the cluster.
-}


type alias IoK8sApiCoreV1Event =
    { action : Maybe String
    , apiVersion : Maybe String
    , count : Maybe Int
    , eventTime : Maybe IoK8sApimachineryPkgApisMetaV1MicroTime
    , firstTimestamp : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , involvedObject : IoK8sApiCoreV1ObjectReference
    , kind : Maybe String
    , lastTimestamp : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , message : Maybe String
    , metadata : IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , reason : Maybe String
    , related : Maybe IoK8sApiCoreV1ObjectReference
    , reportingComponent : Maybe String
    , reportingInstance : Maybe String
    , series : Maybe IoK8sApiCoreV1EventSeries
    , source : Maybe IoK8sApiCoreV1EventSource
    , type_ : Maybe String
    }


ioK8sApiCoreV1EventDecoder : Decoder IoK8sApiCoreV1Event
ioK8sApiCoreV1EventDecoder =
    decode IoK8sApiCoreV1Event
        |> optional "action" (Decode.nullable Decode.string) Nothing
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "count" (Decode.nullable Decode.int) Nothing
        |> optional "eventTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder) Nothing
        |> optional "firstTimestamp" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> required "involvedObject" ioK8sApiCoreV1ObjectReferenceDecoder
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "lastTimestamp" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing
        |> required "metadata" ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder
        |> optional "reason" (Decode.nullable Decode.string) Nothing
        |> optional "related" (Decode.nullable ioK8sApiCoreV1ObjectReferenceDecoder) Nothing
        |> optional "reportingComponent" (Decode.nullable Decode.string) Nothing
        |> optional "reportingInstance" (Decode.nullable Decode.string) Nothing
        |> optional "series" (Decode.nullable ioK8sApiCoreV1EventSeriesDecoder) Nothing
        |> optional "source" (Decode.nullable ioK8sApiCoreV1EventSourceDecoder) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1EventEncoder : IoK8sApiCoreV1Event -> Encode.Value
ioK8sApiCoreV1EventEncoder model =
    Encode.object
        [ ( "action", withDefault Encode.null (map Encode.string model.action) )
        , ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "count", withDefault Encode.null (map Encode.int model.count) )
        , ( "eventTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder model.eventTime) )
        , ( "firstTimestamp", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.firstTimestamp) )
        , ( "involvedObject", ioK8sApiCoreV1ObjectReferenceEncoder model.involvedObject )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "lastTimestamp", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.lastTimestamp) )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        , ( "metadata", ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata )
        , ( "reason", withDefault Encode.null (map Encode.string model.reason) )
        , ( "related", withDefault Encode.null (map ioK8sApiCoreV1ObjectReferenceEncoder model.related) )
        , ( "reportingComponent", withDefault Encode.null (map Encode.string model.reportingComponent) )
        , ( "reportingInstance", withDefault Encode.null (map Encode.string model.reportingInstance) )
        , ( "series", withDefault Encode.null (map ioK8sApiCoreV1EventSeriesEncoder model.series) )
        , ( "source", withDefault Encode.null (map ioK8sApiCoreV1EventSourceEncoder model.source) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        ]


