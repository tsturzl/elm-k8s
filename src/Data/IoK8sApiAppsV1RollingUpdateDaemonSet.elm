{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1RollingUpdateDaemonSet exposing (IoK8sApiAppsV1RollingUpdateDaemonSet, ioK8sApiAppsV1RollingUpdateDaemonSetDecoder, ioK8sApiAppsV1RollingUpdateDaemonSetEncoder)

import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Spec to control the desired behavior of daemon set rolling update.
-}


type alias IoK8sApiAppsV1RollingUpdateDaemonSet =
    { maxUnavailable : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    }


ioK8sApiAppsV1RollingUpdateDaemonSetDecoder : Decoder IoK8sApiAppsV1RollingUpdateDaemonSet
ioK8sApiAppsV1RollingUpdateDaemonSetDecoder =
    decode IoK8sApiAppsV1RollingUpdateDaemonSet
        |> optional "maxUnavailable" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing



ioK8sApiAppsV1RollingUpdateDaemonSetEncoder : IoK8sApiAppsV1RollingUpdateDaemonSet -> Encode.Value
ioK8sApiAppsV1RollingUpdateDaemonSetEncoder model =
    Encode.object
        [ ( "maxUnavailable", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.maxUnavailable) )
        ]


