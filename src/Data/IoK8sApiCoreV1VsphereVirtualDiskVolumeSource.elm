{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1VsphereVirtualDiskVolumeSource exposing (IoK8sApiCoreV1VsphereVirtualDiskVolumeSource, ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceDecoder, ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents a vSphere volume resource.
-}


type alias IoK8sApiCoreV1VsphereVirtualDiskVolumeSource =
    { fsType : Maybe String
    , storagePolicyID : Maybe String
    , storagePolicyName : Maybe String
    , volumePath : String
    }


ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceDecoder : Decoder IoK8sApiCoreV1VsphereVirtualDiskVolumeSource
ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceDecoder =
    decode IoK8sApiCoreV1VsphereVirtualDiskVolumeSource
        |> optional "fsType" (Decode.nullable Decode.string) Nothing
        |> optional "storagePolicyID" (Decode.nullable Decode.string) Nothing
        |> optional "storagePolicyName" (Decode.nullable Decode.string) Nothing
        |> required "volumePath" Decode.string



ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceEncoder : IoK8sApiCoreV1VsphereVirtualDiskVolumeSource -> Encode.Value
ioK8sApiCoreV1VsphereVirtualDiskVolumeSourceEncoder model =
    Encode.object
        [ ( "fsType", withDefault Encode.null (map Encode.string model.fsType) )
        , ( "storagePolicyID", withDefault Encode.null (map Encode.string model.storagePolicyID) )
        , ( "storagePolicyName", withDefault Encode.null (map Encode.string model.storagePolicyName) )
        , ( "volumePath", Encode.string model.volumePath )
        ]


