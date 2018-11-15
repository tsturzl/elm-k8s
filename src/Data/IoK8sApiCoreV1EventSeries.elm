{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1EventSeries exposing (IoK8sApiCoreV1EventSeries, ioK8sApiCoreV1EventSeriesDecoder, ioK8sApiCoreV1EventSeriesEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1MicroTime exposing (IoK8sApimachineryPkgApisMetaV1MicroTime, ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder, ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
-}


type alias IoK8sApiCoreV1EventSeries =
    { count : Maybe Int
    , lastObservedTime : Maybe IoK8sApimachineryPkgApisMetaV1MicroTime
    , state : Maybe String
    }


ioK8sApiCoreV1EventSeriesDecoder : Decoder IoK8sApiCoreV1EventSeries
ioK8sApiCoreV1EventSeriesDecoder =
    decode IoK8sApiCoreV1EventSeries
        |> optional "count" (Decode.nullable Decode.int) Nothing
        |> optional "lastObservedTime" (Decode.nullable ioK8sApimachineryPkgApisMetaV1MicroTimeDecoder) Nothing
        |> optional "state" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1EventSeriesEncoder : IoK8sApiCoreV1EventSeries -> Encode.Value
ioK8sApiCoreV1EventSeriesEncoder model =
    Encode.object
        [ ( "count", withDefault Encode.null (map Encode.int model.count) )
        , ( "lastObservedTime", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1MicroTimeEncoder model.lastObservedTime) )
        , ( "state", withDefault Encode.null (map Encode.string model.state) )
        ]


