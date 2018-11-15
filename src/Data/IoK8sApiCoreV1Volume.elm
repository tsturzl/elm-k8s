{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Volume exposing (IoK8sApiCoreV1Volume, ioK8sApiCoreV1VolumeDecoder, ioK8sApiCoreV1VolumeEncoder)

import Data.IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource exposing (IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource, ioK8sApiCoreV1AWSElasticBlockStoreVolumeSourceDecoder, ioK8sApiCoreV1AWSElasticBlockStoreVolumeSourceEncoder)
import Data.IoK8sApiCoreV1AzureDiskVolumeSource exposing (IoK8sApiCoreV1AzureDiskVolumeSource, ioK8sApiCoreV1AzureDiskVolumeSourceDecoder, ioK8sApiCoreV1AzureDiskVolumeSourceEncoder)
import Data.IoK8sApiCoreV1AzureFileVolumeSource exposing (IoK8sApiCoreV1AzureFileVolumeSource, ioK8sApiCoreV1AzureFileVolumeSourceDecoder, ioK8sApiCoreV1AzureFileVolumeSourceEncoder)
import Data.IoK8sApiCoreV1CephFSVolumeSource exposing (IoK8sApiCoreV1CephFSVolumeSource, ioK8sApiCoreV1CephFSVolumeSourceDecoder, ioK8sApiCoreV1CephFSVolumeSourceEncoder)
import Data.IoK8sApiCoreV1CinderVolumeSource exposing (IoK8sApiCoreV1CinderVolumeSource, ioK8sApiCoreV1CinderVolumeSourceDecoder, ioK8sApiCoreV1CinderVolumeSourceEncoder)
import Data.IoK8sApiCoreV1ConfigMapVolumeSource exposing (IoK8sApiCoreV1ConfigMapVolumeSource, ioK8sApiCoreV1ConfigMapVolumeSourceDecoder, ioK8sApiCoreV1ConfigMapVolumeSourceEncoder)
import Data.IoK8sApiCoreV1DownwardAPIVolumeSource exposing (IoK8sApiCoreV1DownwardAPIVolumeSource, ioK8sApiCoreV1DownwardAPIVolumeSourceDecoder, ioK8sApiCoreV1DownwardAPIVolumeSourceEncoder)
import Data.IoK8sApiCoreV1EmptyDirVolumeSource exposing (IoK8sApiCoreV1EmptyDirVolumeSource, ioK8sApiCoreV1EmptyDirVolumeSourceDecoder, ioK8sApiCoreV1EmptyDirVolumeSourceEncoder)
import Data.IoK8sApiCoreV1FCVolumeSource exposing (IoK8sApiCoreV1FCVolumeSource, ioK8sApiCoreV1FCVolumeSourceDecoder, ioK8sApiCoreV1FCVolumeSourceEncoder)
import Data.IoK8sApiCoreV1FlexVolumeSource exposing (IoK8sApiCoreV1FlexVolumeSource, ioK8sApiCoreV1FlexVolumeSourceDecoder, ioK8sApiCoreV1FlexVolumeSourceEncoder)
import Data.IoK8sApiCoreV1FlockerVolumeSource exposing (IoK8sApiCoreV1FlockerVolumeSource, ioK8sApiCoreV1FlockerVolumeSourceDecoder, ioK8sApiCoreV1FlockerVolumeSourceEncoder)
import Data.IoK8sApiCoreV1GCEPersistentDiskVolumeSource exposing (IoK8sApiCoreV1GCEPersistentDiskVolumeSource, ioK8sApiCoreV1GCEPersistentDiskVolumeSourceDecoder, ioK8sApiCoreV1GCEPersistentDiskVolumeSourceEncoder)
import Data.IoK8sApiCoreV1GitRepoVolumeSource exposing (IoK8sApiCoreV1GitRepoVolumeSource, ioK8sApiCoreV1GitRepoVolumeSourceDecoder, ioK8sApiCoreV1GitRepoVolumeSourceEncoder)
import Data.IoK8sApiCoreV1GlusterfsVolumeSource exposing (IoK8sApiCoreV1GlusterfsVolumeSource, ioK8sApiCoreV1GlusterfsVolumeSourceDecoder, ioK8sApiCoreV1GlusterfsVolumeSourceEncoder)
import Data.IoK8sApiCoreV1HostPathVolumeSource exposing (IoK8sApiCoreV1HostPathVolumeSource, ioK8sApiCoreV1HostPathVolumeSourceDecoder, ioK8sApiCoreV1HostPathVolumeSourceEncoder)
import Data.IoK8sApiCoreV1ISCSIVolumeSource exposing (IoK8sApiCoreV1ISCSIVolumeSource, ioK8sApiCoreV1ISCSIVolumeSourceDecoder, ioK8sApiCoreV1ISCSIVolumeSourceEncoder)
import Data.IoK8sApiCoreV1NFSVolumeSource exposing (IoK8sApiCoreV1NFSVolumeSource, ioK8sApiCoreV1NFSVolumeSourceDecoder, ioK8sApiCoreV1NFSVolumeSourceEncoder)
import Data.IoK8sApiCoreV1PersistentVolumeClaimVolumeSource exposing (IoK8sApiCoreV1PersistentVolumeClaimVolumeSource, ioK8sApiCoreV1PersistentVolumeClaimVolumeSourceDecoder, ioK8sApiCoreV1PersistentVolumeClaimVolumeSourceEncoder)
import Data.IoK8sApiCoreV1PhotonPersistentDiskVolumeSource exposing (IoK8sApiCoreV1PhotonPersistentDiskVolumeSource, ioK8sApiCoreV1PhotonPersistentDiskVolumeSourceDecoder, ioK8sApiCoreV1PhotonPersistentDiskVolumeSourceEncoder)
import Data.IoK8sApiCoreV1PortworxVolumeSource exposing (IoK8sApiCoreV1PortworxVolumeSource, ioK8sApiCoreV1PortworxVolumeSourceDecoder, ioK8sApiCoreV1PortworxVolumeSourceEncoder)
import Data.IoK8sApiCoreV1ProjectedVolumeSource exposing (IoK8sApiCoreV1ProjectedVolumeSource, ioK8sApiCoreV1ProjectedVolumeSourceDecoder, ioK8sApiCoreV1ProjectedVolumeSourceEncoder)
import Data.IoK8sApiCoreV1QuobyteVolumeSource exposing (IoK8sApiCoreV1QuobyteVolumeSource, ioK8sApiCoreV1QuobyteVolumeSourceDecoder, ioK8sApiCoreV1QuobyteVolumeSourceEncoder)
import Data.IoK8sApiCoreV1RBDVolumeSource exposing (IoK8sApiCoreV1RBDVolumeSource, ioK8sApiCoreV1RBDVolumeSourceDecoder, ioK8sApiCoreV1RBDVolumeSourceEncoder)
import Data.IoK8sApiCoreV1ScaleIOVolumeSource exposing (IoK8sApiCoreV1ScaleIOVolumeSource, ioK8sApiCoreV1ScaleIOVolumeSourceDecoder, ioK8sApiCoreV1ScaleIOVolumeSourceEncoder)
import Data.IoK8sApiCoreV1SecretVolumeSource exposing (IoK8sApiCoreV1SecretVolumeSource, ioK8sApiCoreV1SecretVolumeSourceDecoder, ioK8sApiCoreV1SecretVolumeSourceEncoder)
import Data.IoK8sApiCoreV1StorageOSVolumeSource exposing (IoK8sApiCoreV1StorageOSVolumeSource, ioK8sApiCoreV1StorageOSVolumeSourceDecoder, ioK8sApiCoreV1StorageOSVolumeSourceEncoder)
import Data.IoK8sApiCoreV1VsphereVirtualDiskVolumeSource exposing (IoK8sApiCoreV1VsphereVirtualDiskVolumeSource, ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceDecoder, ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Volume represents a named volume in a pod that may be accessed by any container in the pod.
-}


type alias IoK8sApiCoreV1Volume =
    { awsElasticBlockStore : Maybe IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource
    , azureDisk : Maybe IoK8sApiCoreV1AzureDiskVolumeSource
    , azureFile : Maybe IoK8sApiCoreV1AzureFileVolumeSource
    , cephfs : Maybe IoK8sApiCoreV1CephFSVolumeSource
    , cinder : Maybe IoK8sApiCoreV1CinderVolumeSource
    , configMap : Maybe IoK8sApiCoreV1ConfigMapVolumeSource
    , downwardAPI : Maybe IoK8sApiCoreV1DownwardAPIVolumeSource
    , emptyDir : Maybe IoK8sApiCoreV1EmptyDirVolumeSource
    , fc : Maybe IoK8sApiCoreV1FCVolumeSource
    , flexVolume : Maybe IoK8sApiCoreV1FlexVolumeSource
    , flocker : Maybe IoK8sApiCoreV1FlockerVolumeSource
    , gcePersistentDisk : Maybe IoK8sApiCoreV1GCEPersistentDiskVolumeSource
    , gitRepo : Maybe IoK8sApiCoreV1GitRepoVolumeSource
    , glusterfs : Maybe IoK8sApiCoreV1GlusterfsVolumeSource
    , hostPath : Maybe IoK8sApiCoreV1HostPathVolumeSource
    , iscsi : Maybe IoK8sApiCoreV1ISCSIVolumeSource
    , name : String
    , nfs : Maybe IoK8sApiCoreV1NFSVolumeSource
    , persistentVolumeClaim : Maybe IoK8sApiCoreV1PersistentVolumeClaimVolumeSource
    , photonPersistentDisk : Maybe IoK8sApiCoreV1PhotonPersistentDiskVolumeSource
    , portworxVolume : Maybe IoK8sApiCoreV1PortworxVolumeSource
    , projected : Maybe IoK8sApiCoreV1ProjectedVolumeSource
    , quobyte : Maybe IoK8sApiCoreV1QuobyteVolumeSource
    , rbd : Maybe IoK8sApiCoreV1RBDVolumeSource
    , scaleIO : Maybe IoK8sApiCoreV1ScaleIOVolumeSource
    , secret : Maybe IoK8sApiCoreV1SecretVolumeSource
    , storageos : Maybe IoK8sApiCoreV1StorageOSVolumeSource
    , vsphereVolume : Maybe IoK8sApiCoreV1VsphereVirtualDiskVolumeSource
    }


ioK8sApiCoreV1VolumeDecoder : Decoder IoK8sApiCoreV1Volume
ioK8sApiCoreV1VolumeDecoder =
    decode IoK8sApiCoreV1Volume
        |> optional "awsElasticBlockStore" (Decode.nullable ioK8sApiCoreV1AWSElasticBlockStoreVolumeSourceDecoder) Nothing
        |> optional "azureDisk" (Decode.nullable ioK8sApiCoreV1AzureDiskVolumeSourceDecoder) Nothing
        |> optional "azureFile" (Decode.nullable ioK8sApiCoreV1AzureFileVolumeSourceDecoder) Nothing
        |> optional "cephfs" (Decode.nullable ioK8sApiCoreV1CephFSVolumeSourceDecoder) Nothing
        |> optional "cinder" (Decode.nullable ioK8sApiCoreV1CinderVolumeSourceDecoder) Nothing
        |> optional "configMap" (Decode.nullable ioK8sApiCoreV1ConfigMapVolumeSourceDecoder) Nothing
        |> optional "downwardAPI" (Decode.nullable ioK8sApiCoreV1DownwardAPIVolumeSourceDecoder) Nothing
        |> optional "emptyDir" (Decode.nullable ioK8sApiCoreV1EmptyDirVolumeSourceDecoder) Nothing
        |> optional "fc" (Decode.nullable ioK8sApiCoreV1FCVolumeSourceDecoder) Nothing
        |> optional "flexVolume" (Decode.nullable ioK8sApiCoreV1FlexVolumeSourceDecoder) Nothing
        |> optional "flocker" (Decode.nullable ioK8sApiCoreV1FlockerVolumeSourceDecoder) Nothing
        |> optional "gcePersistentDisk" (Decode.nullable ioK8sApiCoreV1GCEPersistentDiskVolumeSourceDecoder) Nothing
        |> optional "gitRepo" (Decode.nullable ioK8sApiCoreV1GitRepoVolumeSourceDecoder) Nothing
        |> optional "glusterfs" (Decode.nullable ioK8sApiCoreV1GlusterfsVolumeSourceDecoder) Nothing
        |> optional "hostPath" (Decode.nullable ioK8sApiCoreV1HostPathVolumeSourceDecoder) Nothing
        |> optional "iscsi" (Decode.nullable ioK8sApiCoreV1ISCSIVolumeSourceDecoder) Nothing
        |> required "name" Decode.string
        |> optional "nfs" (Decode.nullable ioK8sApiCoreV1NFSVolumeSourceDecoder) Nothing
        |> optional "persistentVolumeClaim" (Decode.nullable ioK8sApiCoreV1PersistentVolumeClaimVolumeSourceDecoder) Nothing
        |> optional "photonPersistentDisk" (Decode.nullable ioK8sApiCoreV1PhotonPersistentDiskVolumeSourceDecoder) Nothing
        |> optional "portworxVolume" (Decode.nullable ioK8sApiCoreV1PortworxVolumeSourceDecoder) Nothing
        |> optional "projected" (Decode.nullable ioK8sApiCoreV1ProjectedVolumeSourceDecoder) Nothing
        |> optional "quobyte" (Decode.nullable ioK8sApiCoreV1QuobyteVolumeSourceDecoder) Nothing
        |> optional "rbd" (Decode.nullable ioK8sApiCoreV1RBDVolumeSourceDecoder) Nothing
        |> optional "scaleIO" (Decode.nullable ioK8sApiCoreV1ScaleIOVolumeSourceDecoder) Nothing
        |> optional "secret" (Decode.nullable ioK8sApiCoreV1SecretVolumeSourceDecoder) Nothing
        |> optional "storageos" (Decode.nullable ioK8sApiCoreV1StorageOSVolumeSourceDecoder) Nothing
        |> optional "vsphereVolume" (Decode.nullable ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceDecoder) Nothing



ioK8sApiCoreV1VolumeEncoder : IoK8sApiCoreV1Volume -> Encode.Value
ioK8sApiCoreV1VolumeEncoder model =
    Encode.object
        [ ( "awsElasticBlockStore", withDefault Encode.null (map ioK8sApiCoreV1AWSElasticBlockStoreVolumeSourceEncoder model.awsElasticBlockStore) )
        , ( "azureDisk", withDefault Encode.null (map ioK8sApiCoreV1AzureDiskVolumeSourceEncoder model.azureDisk) )
        , ( "azureFile", withDefault Encode.null (map ioK8sApiCoreV1AzureFileVolumeSourceEncoder model.azureFile) )
        , ( "cephfs", withDefault Encode.null (map ioK8sApiCoreV1CephFSVolumeSourceEncoder model.cephfs) )
        , ( "cinder", withDefault Encode.null (map ioK8sApiCoreV1CinderVolumeSourceEncoder model.cinder) )
        , ( "configMap", withDefault Encode.null (map ioK8sApiCoreV1ConfigMapVolumeSourceEncoder model.configMap) )
        , ( "downwardAPI", withDefault Encode.null (map ioK8sApiCoreV1DownwardAPIVolumeSourceEncoder model.downwardAPI) )
        , ( "emptyDir", withDefault Encode.null (map ioK8sApiCoreV1EmptyDirVolumeSourceEncoder model.emptyDir) )
        , ( "fc", withDefault Encode.null (map ioK8sApiCoreV1FCVolumeSourceEncoder model.fc) )
        , ( "flexVolume", withDefault Encode.null (map ioK8sApiCoreV1FlexVolumeSourceEncoder model.flexVolume) )
        , ( "flocker", withDefault Encode.null (map ioK8sApiCoreV1FlockerVolumeSourceEncoder model.flocker) )
        , ( "gcePersistentDisk", withDefault Encode.null (map ioK8sApiCoreV1GCEPersistentDiskVolumeSourceEncoder model.gcePersistentDisk) )
        , ( "gitRepo", withDefault Encode.null (map ioK8sApiCoreV1GitRepoVolumeSourceEncoder model.gitRepo) )
        , ( "glusterfs", withDefault Encode.null (map ioK8sApiCoreV1GlusterfsVolumeSourceEncoder model.glusterfs) )
        , ( "hostPath", withDefault Encode.null (map ioK8sApiCoreV1HostPathVolumeSourceEncoder model.hostPath) )
        , ( "iscsi", withDefault Encode.null (map ioK8sApiCoreV1ISCSIVolumeSourceEncoder model.iscsi) )
        , ( "name", Encode.string model.name )
        , ( "nfs", withDefault Encode.null (map ioK8sApiCoreV1NFSVolumeSourceEncoder model.nfs) )
        , ( "persistentVolumeClaim", withDefault Encode.null (map ioK8sApiCoreV1PersistentVolumeClaimVolumeSourceEncoder model.persistentVolumeClaim) )
        , ( "photonPersistentDisk", withDefault Encode.null (map ioK8sApiCoreV1PhotonPersistentDiskVolumeSourceEncoder model.photonPersistentDisk) )
        , ( "portworxVolume", withDefault Encode.null (map ioK8sApiCoreV1PortworxVolumeSourceEncoder model.portworxVolume) )
        , ( "projected", withDefault Encode.null (map ioK8sApiCoreV1ProjectedVolumeSourceEncoder model.projected) )
        , ( "quobyte", withDefault Encode.null (map ioK8sApiCoreV1QuobyteVolumeSourceEncoder model.quobyte) )
        , ( "rbd", withDefault Encode.null (map ioK8sApiCoreV1RBDVolumeSourceEncoder model.rbd) )
        , ( "scaleIO", withDefault Encode.null (map ioK8sApiCoreV1ScaleIOVolumeSourceEncoder model.scaleIO) )
        , ( "secret", withDefault Encode.null (map ioK8sApiCoreV1SecretVolumeSourceEncoder model.secret) )
        , ( "storageos", withDefault Encode.null (map ioK8sApiCoreV1StorageOSVolumeSourceEncoder model.storageos) )
        , ( "vsphereVolume", withDefault Encode.null (map ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceEncoder model.vsphereVolume) )
        ]


