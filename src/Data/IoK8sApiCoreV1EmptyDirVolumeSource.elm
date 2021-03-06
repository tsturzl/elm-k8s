{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1EmptyDirVolumeSource exposing (IoK8sApiCoreV1EmptyDirVolumeSource, ioK8sApiCoreV1EmptyDirVolumeSourceDecoder, ioK8sApiCoreV1EmptyDirVolumeSourceEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
-}


type alias IoK8sApiCoreV1EmptyDirVolumeSource =
    { medium : Maybe String
    , sizeLimit : Maybe IoK8sApimachineryPkgApiResourceQuantity
    }


ioK8sApiCoreV1EmptyDirVolumeSourceDecoder : Decoder IoK8sApiCoreV1EmptyDirVolumeSource
ioK8sApiCoreV1EmptyDirVolumeSourceDecoder =
    decode IoK8sApiCoreV1EmptyDirVolumeSource
        |> optional "medium" (Decode.nullable Decode.string) Nothing
        |> optional "sizeLimit" (Decode.nullable ioK8sApimachineryPkgApiResourceQuantityDecoder) Nothing



ioK8sApiCoreV1EmptyDirVolumeSourceEncoder : IoK8sApiCoreV1EmptyDirVolumeSource -> Encode.Value
ioK8sApiCoreV1EmptyDirVolumeSourceEncoder model =
    Encode.object
        [ ( "medium", withDefault Encode.null (map Encode.string model.medium) )
        , ( "sizeLimit", withDefault Encode.null (map ioK8sApimachineryPkgApiResourceQuantityEncoder model.sizeLimit) )
        ]


