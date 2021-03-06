{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus exposing (IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus, ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusDecoder, ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
-}


type alias IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus =
    { currentHealthy : Int
    , desiredHealthy : Int
    , disruptedPods : Maybe (List IoK8sApimachineryPkgApisMetaV1Time)
    , disruptionsAllowed : Int
    , expectedPods : Int
    , observedGeneration : Maybe Int
    }


ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusDecoder : Decoder IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus
ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusDecoder =
    decode IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus
        |> required "currentHealthy" Decode.int
        |> required "desiredHealthy" Decode.int
        |> optional "disruptedPods" (Decode.nullable (Decode.list ioK8sApimachineryPkgApisMetaV1TimeDecoder)) Nothing
        |> required "disruptionsAllowed" Decode.int
        |> required "expectedPods" Decode.int
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing



ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusEncoder : IoK8sApiPolicyV1beta1PodDisruptionBudgetStatus -> Encode.Value
ioK8sApiPolicyV1beta1PodDisruptionBudgetStatusEncoder model =
    Encode.object
        [ ( "currentHealthy", Encode.int model.currentHealthy )
        , ( "desiredHealthy", Encode.int model.desiredHealthy )
        , ( "disruptedPods", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApisMetaV1TimeEncoder) model.disruptedPods) )
        , ( "disruptionsAllowed", Encode.int model.disruptionsAllowed )
        , ( "expectedPods", Encode.int model.expectedPods )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        ]


