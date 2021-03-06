{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiPolicyV1beta1PodSecurityPolicySpec exposing (IoK8sApiPolicyV1beta1PodSecurityPolicySpec, ioK8sApiPolicyV1beta1PodSecurityPolicySpecDecoder, ioK8sApiPolicyV1beta1PodSecurityPolicySpecEncoder)

import Data.IoK8sApiPolicyV1beta1AllowedFlexVolume exposing (IoK8sApiPolicyV1beta1AllowedFlexVolume, ioK8sApiPolicyV1beta1AllowedFlexVolumeDecoder, ioK8sApiPolicyV1beta1AllowedFlexVolumeEncoder)
import Data.IoK8sApiPolicyV1beta1AllowedHostPath exposing (IoK8sApiPolicyV1beta1AllowedHostPath, ioK8sApiPolicyV1beta1AllowedHostPathDecoder, ioK8sApiPolicyV1beta1AllowedHostPathEncoder)
import Data.IoK8sApiPolicyV1beta1FSGroupStrategyOptions exposing (IoK8sApiPolicyV1beta1FSGroupStrategyOptions, ioK8sApiPolicyV1beta1FSGroupStrategyOptionsDecoder, ioK8sApiPolicyV1beta1FSGroupStrategyOptionsEncoder)
import Data.IoK8sApiPolicyV1beta1HostPortRange exposing (IoK8sApiPolicyV1beta1HostPortRange, ioK8sApiPolicyV1beta1HostPortRangeDecoder, ioK8sApiPolicyV1beta1HostPortRangeEncoder)
import Data.IoK8sApiPolicyV1beta1RunAsGroupStrategyOptions exposing (IoK8sApiPolicyV1beta1RunAsGroupStrategyOptions, ioK8sApiPolicyV1beta1RunAsGroupStrategyOptionsDecoder, ioK8sApiPolicyV1beta1RunAsGroupStrategyOptionsEncoder)
import Data.IoK8sApiPolicyV1beta1RunAsUserStrategyOptions exposing (IoK8sApiPolicyV1beta1RunAsUserStrategyOptions, ioK8sApiPolicyV1beta1RunAsUserStrategyOptionsDecoder, ioK8sApiPolicyV1beta1RunAsUserStrategyOptionsEncoder)
import Data.IoK8sApiPolicyV1beta1SELinuxStrategyOptions exposing (IoK8sApiPolicyV1beta1SELinuxStrategyOptions, ioK8sApiPolicyV1beta1SELinuxStrategyOptionsDecoder, ioK8sApiPolicyV1beta1SELinuxStrategyOptionsEncoder)
import Data.IoK8sApiPolicyV1beta1SupplementalGroupsStrategyOptions exposing (IoK8sApiPolicyV1beta1SupplementalGroupsStrategyOptions, ioK8sApiPolicyV1beta1SupplementalGroupsStrategyOptionsDecoder, ioK8sApiPolicyV1beta1SupplementalGroupsStrategyOptionsEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodSecurityPolicySpec defines the policy enforced.
-}


type alias IoK8sApiPolicyV1beta1PodSecurityPolicySpec =
    { allowPrivilegeEscalation : Maybe Bool
    , allowedCapabilities : Maybe (List String)
    , allowedFlexVolumes : Maybe (List IoK8sApiPolicyV1beta1AllowedFlexVolume)
    , allowedHostPaths : Maybe (List IoK8sApiPolicyV1beta1AllowedHostPath)
    , allowedProcMountTypes : Maybe (List String)
    , allowedUnsafeSysctls : Maybe (List String)
    , defaultAddCapabilities : Maybe (List String)
    , defaultAllowPrivilegeEscalation : Maybe Bool
    , forbiddenSysctls : Maybe (List String)
    , fsGroup : IoK8sApiPolicyV1beta1FSGroupStrategyOptions
    , hostIPC : Maybe Bool
    , hostNetwork : Maybe Bool
    , hostPID : Maybe Bool
    , hostPorts : Maybe (List IoK8sApiPolicyV1beta1HostPortRange)
    , privileged : Maybe Bool
    , readOnlyRootFilesystem : Maybe Bool
    , requiredDropCapabilities : Maybe (List String)
    , runAsGroup : Maybe IoK8sApiPolicyV1beta1RunAsGroupStrategyOptions
    , runAsUser : IoK8sApiPolicyV1beta1RunAsUserStrategyOptions
    , seLinux : IoK8sApiPolicyV1beta1SELinuxStrategyOptions
    , supplementalGroups : IoK8sApiPolicyV1beta1SupplementalGroupsStrategyOptions
    , volumes : Maybe (List String)
    }


ioK8sApiPolicyV1beta1PodSecurityPolicySpecDecoder : Decoder IoK8sApiPolicyV1beta1PodSecurityPolicySpec
ioK8sApiPolicyV1beta1PodSecurityPolicySpecDecoder =
    decode IoK8sApiPolicyV1beta1PodSecurityPolicySpec
        |> optional "allowPrivilegeEscalation" (Decode.nullable Decode.bool) Nothing
        |> optional "allowedCapabilities" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "allowedFlexVolumes" (Decode.nullable (Decode.list ioK8sApiPolicyV1beta1AllowedFlexVolumeDecoder)) Nothing
        |> optional "allowedHostPaths" (Decode.nullable (Decode.list ioK8sApiPolicyV1beta1AllowedHostPathDecoder)) Nothing
        |> optional "allowedProcMountTypes" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "allowedUnsafeSysctls" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "defaultAddCapabilities" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "defaultAllowPrivilegeEscalation" (Decode.nullable Decode.bool) Nothing
        |> optional "forbiddenSysctls" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> required "fsGroup" ioK8sApiPolicyV1beta1FSGroupStrategyOptionsDecoder
        |> optional "hostIPC" (Decode.nullable Decode.bool) Nothing
        |> optional "hostNetwork" (Decode.nullable Decode.bool) Nothing
        |> optional "hostPID" (Decode.nullable Decode.bool) Nothing
        |> optional "hostPorts" (Decode.nullable (Decode.list ioK8sApiPolicyV1beta1HostPortRangeDecoder)) Nothing
        |> optional "privileged" (Decode.nullable Decode.bool) Nothing
        |> optional "readOnlyRootFilesystem" (Decode.nullable Decode.bool) Nothing
        |> optional "requiredDropCapabilities" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "runAsGroup" (Decode.nullable ioK8sApiPolicyV1beta1RunAsGroupStrategyOptionsDecoder) Nothing
        |> required "runAsUser" ioK8sApiPolicyV1beta1RunAsUserStrategyOptionsDecoder
        |> required "seLinux" ioK8sApiPolicyV1beta1SELinuxStrategyOptionsDecoder
        |> required "supplementalGroups" ioK8sApiPolicyV1beta1SupplementalGroupsStrategyOptionsDecoder
        |> optional "volumes" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiPolicyV1beta1PodSecurityPolicySpecEncoder : IoK8sApiPolicyV1beta1PodSecurityPolicySpec -> Encode.Value
ioK8sApiPolicyV1beta1PodSecurityPolicySpecEncoder model =
    Encode.object
        [ ( "allowPrivilegeEscalation", withDefault Encode.null (map Encode.bool model.allowPrivilegeEscalation) )
        , ( "allowedCapabilities", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.allowedCapabilities) )
        , ( "allowedFlexVolumes", withDefault Encode.null (map (Encode.list << List.map ioK8sApiPolicyV1beta1AllowedFlexVolumeEncoder) model.allowedFlexVolumes) )
        , ( "allowedHostPaths", withDefault Encode.null (map (Encode.list << List.map ioK8sApiPolicyV1beta1AllowedHostPathEncoder) model.allowedHostPaths) )
        , ( "allowedProcMountTypes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.allowedProcMountTypes) )
        , ( "allowedUnsafeSysctls", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.allowedUnsafeSysctls) )
        , ( "defaultAddCapabilities", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.defaultAddCapabilities) )
        , ( "defaultAllowPrivilegeEscalation", withDefault Encode.null (map Encode.bool model.defaultAllowPrivilegeEscalation) )
        , ( "forbiddenSysctls", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.forbiddenSysctls) )
        , ( "fsGroup", ioK8sApiPolicyV1beta1FSGroupStrategyOptionsEncoder model.fsGroup )
        , ( "hostIPC", withDefault Encode.null (map Encode.bool model.hostIPC) )
        , ( "hostNetwork", withDefault Encode.null (map Encode.bool model.hostNetwork) )
        , ( "hostPID", withDefault Encode.null (map Encode.bool model.hostPID) )
        , ( "hostPorts", withDefault Encode.null (map (Encode.list << List.map ioK8sApiPolicyV1beta1HostPortRangeEncoder) model.hostPorts) )
        , ( "privileged", withDefault Encode.null (map Encode.bool model.privileged) )
        , ( "readOnlyRootFilesystem", withDefault Encode.null (map Encode.bool model.readOnlyRootFilesystem) )
        , ( "requiredDropCapabilities", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.requiredDropCapabilities) )
        , ( "runAsGroup", withDefault Encode.null (map ioK8sApiPolicyV1beta1RunAsGroupStrategyOptionsEncoder model.runAsGroup) )
        , ( "runAsUser", ioK8sApiPolicyV1beta1RunAsUserStrategyOptionsEncoder model.runAsUser )
        , ( "seLinux", ioK8sApiPolicyV1beta1SELinuxStrategyOptionsEncoder model.seLinux )
        , ( "supplementalGroups", ioK8sApiPolicyV1beta1SupplementalGroupsStrategyOptionsEncoder model.supplementalGroups )
        , ( "volumes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.volumes) )
        ]


