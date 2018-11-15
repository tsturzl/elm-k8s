{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1StatefulSetUpdateStrategy exposing (IoK8sApiAppsV1StatefulSetUpdateStrategy, ioK8sApiAppsV1StatefulSetUpdateStrategyDecoder, ioK8sApiAppsV1StatefulSetUpdateStrategyEncoder)

import Data.IoK8sApiAppsV1RollingUpdateStatefulSetStrategy exposing (IoK8sApiAppsV1RollingUpdateStatefulSetStrategy, ioK8sApiAppsV1RollingUpdateStatefulSetStrategyDecoder, ioK8sApiAppsV1RollingUpdateStatefulSetStrategyEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
-}


type alias IoK8sApiAppsV1StatefulSetUpdateStrategy =
    { rollingUpdate : Maybe IoK8sApiAppsV1RollingUpdateStatefulSetStrategy
    , type_ : Maybe String
    }


ioK8sApiAppsV1StatefulSetUpdateStrategyDecoder : Decoder IoK8sApiAppsV1StatefulSetUpdateStrategy
ioK8sApiAppsV1StatefulSetUpdateStrategyDecoder =
    decode IoK8sApiAppsV1StatefulSetUpdateStrategy
        |> optional "rollingUpdate" (Decode.nullable ioK8sApiAppsV1RollingUpdateStatefulSetStrategyDecoder) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing



ioK8sApiAppsV1StatefulSetUpdateStrategyEncoder : IoK8sApiAppsV1StatefulSetUpdateStrategy -> Encode.Value
ioK8sApiAppsV1StatefulSetUpdateStrategyEncoder model =
    Encode.object
        [ ( "rollingUpdate", withDefault Encode.null (map ioK8sApiAppsV1RollingUpdateStatefulSetStrategyEncoder model.rollingUpdate) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        ]


