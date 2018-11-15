{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec exposing (IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec, ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecDecoder, ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecEncoder)

import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1LabelSelector exposing (IoK8sApimachineryPkgApisMetaV1LabelSelector, ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
-}


type alias IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec =
    { maxUnavailable : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    , minAvailable : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    , selector : Maybe IoK8sApimachineryPkgApisMetaV1LabelSelector
    }


ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecDecoder : Decoder IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec
ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecDecoder =
    decode IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec
        |> optional "maxUnavailable" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing
        |> optional "minAvailable" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing
        |> optional "selector" (Decode.nullable ioK8sApimachineryPkgApisMetaV1LabelSelectorDecoder) Nothing



ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecEncoder : IoK8sApiPolicyV1beta1PodDisruptionBudgetSpec -> Encode.Value
ioK8sApiPolicyV1beta1PodDisruptionBudgetSpecEncoder model =
    Encode.object
        [ ( "maxUnavailable", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.maxUnavailable) )
        , ( "minAvailable", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.minAvailable) )
        , ( "selector", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1LabelSelectorEncoder model.selector) )
        ]


