{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PersistentVolumeClaimStatus exposing (IoK8sApiCoreV1PersistentVolumeClaimStatus, ioK8sApiCoreV1PersistentVolumeClaimStatusDecoder, ioK8sApiCoreV1PersistentVolumeClaimStatusEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApiCoreV1PersistentVolumeClaimCondition exposing (IoK8sApiCoreV1PersistentVolumeClaimCondition, ioK8sApiCoreV1PersistentVolumeClaimConditionDecoder, ioK8sApiCoreV1PersistentVolumeClaimConditionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PersistentVolumeClaimStatus is the current status of a persistent volume claim.
-}


type alias IoK8sApiCoreV1PersistentVolumeClaimStatus =
    { accessModes : Maybe (List String)
    , capacity : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , conditions : Maybe (List IoK8sApiCoreV1PersistentVolumeClaimCondition)
    , phase : Maybe String
    }


ioK8sApiCoreV1PersistentVolumeClaimStatusDecoder : Decoder IoK8sApiCoreV1PersistentVolumeClaimStatus
ioK8sApiCoreV1PersistentVolumeClaimStatusDecoder =
    decode IoK8sApiCoreV1PersistentVolumeClaimStatus
        |> optional "accessModes" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "capacity" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiCoreV1PersistentVolumeClaimConditionDecoder)) Nothing
        |> optional "phase" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1PersistentVolumeClaimStatusEncoder : IoK8sApiCoreV1PersistentVolumeClaimStatus -> Encode.Value
ioK8sApiCoreV1PersistentVolumeClaimStatusEncoder model =
    Encode.object
        [ ( "accessModes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.accessModes) )
        , ( "capacity", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.capacity) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1PersistentVolumeClaimConditionEncoder) model.conditions) )
        , ( "phase", withDefault Encode.null (map Encode.string model.phase) )
        ]


