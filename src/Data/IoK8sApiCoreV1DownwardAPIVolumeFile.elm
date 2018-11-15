{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1DownwardAPIVolumeFile exposing (IoK8sApiCoreV1DownwardAPIVolumeFile, ioK8sApiCoreV1DownwardAPIVolumeFileDecoder, ioK8sApiCoreV1DownwardAPIVolumeFileEncoder)

import Data.IoK8sApiCoreV1ObjectFieldSelector exposing (IoK8sApiCoreV1ObjectFieldSelector, ioK8sApiCoreV1ObjectFieldSelectorDecoder, ioK8sApiCoreV1ObjectFieldSelectorEncoder)
import Data.IoK8sApiCoreV1ResourceFieldSelector exposing (IoK8sApiCoreV1ResourceFieldSelector, ioK8sApiCoreV1ResourceFieldSelectorDecoder, ioK8sApiCoreV1ResourceFieldSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   DownwardAPIVolumeFile represents information to create the file containing the pod field
-}


type alias IoK8sApiCoreV1DownwardAPIVolumeFile =
    { fieldRef : Maybe IoK8sApiCoreV1ObjectFieldSelector
    , mode : Maybe Int
    , path : String
    , resourceFieldRef : Maybe IoK8sApiCoreV1ResourceFieldSelector
    }


ioK8sApiCoreV1DownwardAPIVolumeFileDecoder : Decoder IoK8sApiCoreV1DownwardAPIVolumeFile
ioK8sApiCoreV1DownwardAPIVolumeFileDecoder =
    decode IoK8sApiCoreV1DownwardAPIVolumeFile
        |> optional "fieldRef" (Decode.nullable ioK8sApiCoreV1ObjectFieldSelectorDecoder) Nothing
        |> optional "mode" (Decode.nullable Decode.int) Nothing
        |> required "path" Decode.string
        |> optional "resourceFieldRef" (Decode.nullable ioK8sApiCoreV1ResourceFieldSelectorDecoder) Nothing



ioK8sApiCoreV1DownwardAPIVolumeFileEncoder : IoK8sApiCoreV1DownwardAPIVolumeFile -> Encode.Value
ioK8sApiCoreV1DownwardAPIVolumeFileEncoder model =
    Encode.object
        [ ( "fieldRef", withDefault Encode.null (map ioK8sApiCoreV1ObjectFieldSelectorEncoder model.fieldRef) )
        , ( "mode", withDefault Encode.null (map Encode.int model.mode) )
        , ( "path", Encode.string model.path )
        , ( "resourceFieldRef", withDefault Encode.null (map ioK8sApiCoreV1ResourceFieldSelectorEncoder model.resourceFieldRef) )
        ]

