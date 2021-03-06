{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions exposing (IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions, ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsDecoder, ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsEncoder)

import Data.IoK8sApiExtensionsV1beta1IDRange exposing (IoK8sApiExtensionsV1beta1IDRange, ioK8sApiExtensionsV1beta1IDRangeDecoder, ioK8sApiExtensionsV1beta1IDRangeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsUserStrategyOptions from policy API Group instead.
-}


type alias IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions =
    { ranges : Maybe (List IoK8sApiExtensionsV1beta1IDRange)
    , rule : String
    }


ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsDecoder : Decoder IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions
ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsDecoder =
    decode IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions
        |> optional "ranges" (Decode.nullable (Decode.list ioK8sApiExtensionsV1beta1IDRangeDecoder)) Nothing
        |> required "rule" Decode.string



ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsEncoder : IoK8sApiExtensionsV1beta1RunAsUserStrategyOptions -> Encode.Value
ioK8sApiExtensionsV1beta1RunAsUserStrategyOptionsEncoder model =
    Encode.object
        [ ( "ranges", withDefault Encode.null (map (Encode.list << List.map ioK8sApiExtensionsV1beta1IDRangeEncoder) model.ranges) )
        , ( "rule", Encode.string model.rule )
        ]


