{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAppsV1beta1DeploymentStatus exposing (IoK8sApiAppsV1beta1DeploymentStatus, ioK8sApiAppsV1beta1DeploymentStatusDecoder, ioK8sApiAppsV1beta1DeploymentStatusEncoder)

import Data.IoK8sApiAppsV1beta1DeploymentCondition exposing (IoK8sApiAppsV1beta1DeploymentCondition, ioK8sApiAppsV1beta1DeploymentConditionDecoder, ioK8sApiAppsV1beta1DeploymentConditionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DeploymentStatus is the most recently observed status of the Deployment.
-}


type alias IoK8sApiAppsV1beta1DeploymentStatus =
    { availableReplicas : Maybe Int
    , collisionCount : Maybe Int
    , conditions : Maybe (List IoK8sApiAppsV1beta1DeploymentCondition)
    , observedGeneration : Maybe Int
    , readyReplicas : Maybe Int
    , replicas : Maybe Int
    , unavailableReplicas : Maybe Int
    , updatedReplicas : Maybe Int
    }


ioK8sApiAppsV1beta1DeploymentStatusDecoder : Decoder IoK8sApiAppsV1beta1DeploymentStatus
ioK8sApiAppsV1beta1DeploymentStatusDecoder =
    decode IoK8sApiAppsV1beta1DeploymentStatus
        |> optional "availableReplicas" (Decode.nullable Decode.int) Nothing
        |> optional "collisionCount" (Decode.nullable Decode.int) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiAppsV1beta1DeploymentConditionDecoder)) Nothing
        |> optional "observedGeneration" (Decode.nullable Decode.int) Nothing
        |> optional "readyReplicas" (Decode.nullable Decode.int) Nothing
        |> optional "replicas" (Decode.nullable Decode.int) Nothing
        |> optional "unavailableReplicas" (Decode.nullable Decode.int) Nothing
        |> optional "updatedReplicas" (Decode.nullable Decode.int) Nothing



ioK8sApiAppsV1beta1DeploymentStatusEncoder : IoK8sApiAppsV1beta1DeploymentStatus -> Encode.Value
ioK8sApiAppsV1beta1DeploymentStatusEncoder model =
    Encode.object
        [ ( "availableReplicas", withDefault Encode.null (map Encode.int model.availableReplicas) )
        , ( "collisionCount", withDefault Encode.null (map Encode.int model.collisionCount) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiAppsV1beta1DeploymentConditionEncoder) model.conditions) )
        , ( "observedGeneration", withDefault Encode.null (map Encode.int model.observedGeneration) )
        , ( "readyReplicas", withDefault Encode.null (map Encode.int model.readyReplicas) )
        , ( "replicas", withDefault Encode.null (map Encode.int model.replicas) )
        , ( "unavailableReplicas", withDefault Encode.null (map Encode.int model.unavailableReplicas) )
        , ( "updatedReplicas", withDefault Encode.null (map Encode.int model.updatedReplicas) )
        ]


