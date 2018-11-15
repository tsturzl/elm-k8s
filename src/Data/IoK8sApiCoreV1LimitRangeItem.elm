{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LimitRangeItem exposing (IoK8sApiCoreV1LimitRangeItem, ioK8sApiCoreV1LimitRangeItemDecoder, ioK8sApiCoreV1LimitRangeItemEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
-}


type alias IoK8sApiCoreV1LimitRangeItem =
    { default : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , defaultRequest : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , max : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , maxLimitRequestRatio : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , min : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , type_ : Maybe String
    }


ioK8sApiCoreV1LimitRangeItemDecoder : Decoder IoK8sApiCoreV1LimitRangeItem
ioK8sApiCoreV1LimitRangeItemDecoder =
    decode IoK8sApiCoreV1LimitRangeItem
        |> optional "default" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "defaultRequest" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "max" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "maxLimitRequestRatio" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "min" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1LimitRangeItemEncoder : IoK8sApiCoreV1LimitRangeItem -> Encode.Value
ioK8sApiCoreV1LimitRangeItemEncoder model =
    Encode.object
        [ ( "default", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.default) )
        , ( "defaultRequest", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.defaultRequest) )
        , ( "max", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.max) )
        , ( "maxLimitRequestRatio", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.maxLimitRequestRatio) )
        , ( "min", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.min) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        ]

