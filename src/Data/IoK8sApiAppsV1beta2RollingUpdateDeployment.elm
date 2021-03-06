{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta2RollingUpdateDeployment exposing (IoK8sApiAppsV1beta2RollingUpdateDeployment, ioK8sApiAppsV1beta2RollingUpdateDeploymentDecoder, ioK8sApiAppsV1beta2RollingUpdateDeploymentEncoder)

import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Spec to control the desired behavior of rolling update.
-}


type alias IoK8sApiAppsV1beta2RollingUpdateDeployment =
    { maxSurge : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    , maxUnavailable : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    }


ioK8sApiAppsV1beta2RollingUpdateDeploymentDecoder : Decoder IoK8sApiAppsV1beta2RollingUpdateDeployment
ioK8sApiAppsV1beta2RollingUpdateDeploymentDecoder =
    decode IoK8sApiAppsV1beta2RollingUpdateDeployment
        |> optional "maxSurge" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing
        |> optional "maxUnavailable" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing



ioK8sApiAppsV1beta2RollingUpdateDeploymentEncoder : IoK8sApiAppsV1beta2RollingUpdateDeployment -> Encode.Value
ioK8sApiAppsV1beta2RollingUpdateDeploymentEncoder model =
    Encode.object
        [ ( "maxSurge", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.maxSurge) )
        , ( "maxUnavailable", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.maxUnavailable) )
        ]


