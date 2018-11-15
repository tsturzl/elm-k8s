{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NodeStatus exposing (IoK8sApiCoreV1NodeStatus, ioK8sApiCoreV1NodeStatusDecoder, ioK8sApiCoreV1NodeStatusEncoder)

import Data.IoK8sApiCoreV1NodeAddress exposing (IoK8sApiCoreV1NodeAddress, ioK8sApiCoreV1NodeAddressDecoder, ioK8sApiCoreV1NodeAddressEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApiCoreV1NodeCondition exposing (IoK8sApiCoreV1NodeCondition, ioK8sApiCoreV1NodeConditionDecoder, ioK8sApiCoreV1NodeConditionEncoder)
import Data.IoK8sApiCoreV1NodeConfigStatus exposing (IoK8sApiCoreV1NodeConfigStatus, ioK8sApiCoreV1NodeConfigStatusDecoder, ioK8sApiCoreV1NodeConfigStatusEncoder)
import Data.IoK8sApiCoreV1NodeDaemonEndpoints exposing (IoK8sApiCoreV1NodeDaemonEndpoints, ioK8sApiCoreV1NodeDaemonEndpointsDecoder, ioK8sApiCoreV1NodeDaemonEndpointsEncoder)
import Data.IoK8sApiCoreV1ContainerImage exposing (IoK8sApiCoreV1ContainerImage, ioK8sApiCoreV1ContainerImageDecoder, ioK8sApiCoreV1ContainerImageEncoder)
import Data.IoK8sApiCoreV1NodeSystemInfo exposing (IoK8sApiCoreV1NodeSystemInfo, ioK8sApiCoreV1NodeSystemInfoDecoder, ioK8sApiCoreV1NodeSystemInfoEncoder)
import Data.IoK8sApiCoreV1AttachedVolume exposing (IoK8sApiCoreV1AttachedVolume, ioK8sApiCoreV1AttachedVolumeDecoder, ioK8sApiCoreV1AttachedVolumeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   NodeStatus is information about the current status of a node.
-}


type alias IoK8sApiCoreV1NodeStatus =
    { addresses : Maybe (List IoK8sApiCoreV1NodeAddress)
    , allocatable : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , capacity : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , conditions : Maybe (List IoK8sApiCoreV1NodeCondition)
    , config : Maybe IoK8sApiCoreV1NodeConfigStatus
    , daemonEndpoints : Maybe IoK8sApiCoreV1NodeDaemonEndpoints
    , images : Maybe (List IoK8sApiCoreV1ContainerImage)
    , nodeInfo : Maybe IoK8sApiCoreV1NodeSystemInfo
    , phase : Maybe String
    , volumesAttached : Maybe (List IoK8sApiCoreV1AttachedVolume)
    , volumesInUse : Maybe (List String)
    }


ioK8sApiCoreV1NodeStatusDecoder : Decoder IoK8sApiCoreV1NodeStatus
ioK8sApiCoreV1NodeStatusDecoder =
    decode IoK8sApiCoreV1NodeStatus
        |> optional "addresses" (Decode.nullable (Decode.list ioK8sApiCoreV1NodeAddressDecoder)) Nothing
        |> optional "allocatable" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "capacity" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "conditions" (Decode.nullable (Decode.list ioK8sApiCoreV1NodeConditionDecoder)) Nothing
        |> optional "config" (Decode.nullable ioK8sApiCoreV1NodeConfigStatusDecoder) Nothing
        |> optional "daemonEndpoints" (Decode.nullable ioK8sApiCoreV1NodeDaemonEndpointsDecoder) Nothing
        |> optional "images" (Decode.nullable (Decode.list ioK8sApiCoreV1ContainerImageDecoder)) Nothing
        |> optional "nodeInfo" (Decode.nullable ioK8sApiCoreV1NodeSystemInfoDecoder) Nothing
        |> optional "phase" (Decode.nullable Decode.string) Nothing
        |> optional "volumesAttached" (Decode.nullable (Decode.list ioK8sApiCoreV1AttachedVolumeDecoder)) Nothing
        |> optional "volumesInUse" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiCoreV1NodeStatusEncoder : IoK8sApiCoreV1NodeStatus -> Encode.Value
ioK8sApiCoreV1NodeStatusEncoder model =
    Encode.object
        [ ( "addresses", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1NodeAddressEncoder) model.addresses) )
        , ( "allocatable", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.allocatable) )
        , ( "capacity", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.capacity) )
        , ( "conditions", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1NodeConditionEncoder) model.conditions) )
        , ( "config", withDefault Encode.null (map ioK8sApiCoreV1NodeConfigStatusEncoder model.config) )
        , ( "daemonEndpoints", withDefault Encode.null (map ioK8sApiCoreV1NodeDaemonEndpointsEncoder model.daemonEndpoints) )
        , ( "images", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1ContainerImageEncoder) model.images) )
        , ( "nodeInfo", withDefault Encode.null (map ioK8sApiCoreV1NodeSystemInfoEncoder model.nodeInfo) )
        , ( "phase", withDefault Encode.null (map Encode.string model.phase) )
        , ( "volumesAttached", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1AttachedVolumeEncoder) model.volumesAttached) )
        , ( "volumesInUse", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.volumesInUse) )
        ]


