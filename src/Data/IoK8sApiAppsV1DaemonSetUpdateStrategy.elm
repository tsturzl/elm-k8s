{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1DaemonSetUpdateStrategy exposing (IoK8sApiAppsV1DaemonSetUpdateStrategy, ioK8sApiAppsV1DaemonSetUpdateStrategyDecoder, ioK8sApiAppsV1DaemonSetUpdateStrategyEncoder)

import Data.IoK8sApiAppsV1RollingUpdateDaemonSet exposing (IoK8sApiAppsV1RollingUpdateDaemonSet, ioK8sApiAppsV1RollingUpdateDaemonSetDecoder, ioK8sApiAppsV1RollingUpdateDaemonSetEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
-}


type alias IoK8sApiAppsV1DaemonSetUpdateStrategy =
    { rollingUpdate : Maybe IoK8sApiAppsV1RollingUpdateDaemonSet
    , type_ : Maybe String
    }


ioK8sApiAppsV1DaemonSetUpdateStrategyDecoder : Decoder IoK8sApiAppsV1DaemonSetUpdateStrategy
ioK8sApiAppsV1DaemonSetUpdateStrategyDecoder =
    decode IoK8sApiAppsV1DaemonSetUpdateStrategy
        |> optional "rollingUpdate" (Decode.nullable ioK8sApiAppsV1RollingUpdateDaemonSetDecoder) Nothing
        |> optional "type" (Decode.nullable Decode.string) Nothing



ioK8sApiAppsV1DaemonSetUpdateStrategyEncoder : IoK8sApiAppsV1DaemonSetUpdateStrategy -> Encode.Value
ioK8sApiAppsV1DaemonSetUpdateStrategyEncoder model =
    Encode.object
        [ ( "rollingUpdate", withDefault Encode.null (map ioK8sApiAppsV1RollingUpdateDaemonSetEncoder model.rollingUpdate) )
        , ( "type", withDefault Encode.null (map Encode.string model.type_) )
        ]


