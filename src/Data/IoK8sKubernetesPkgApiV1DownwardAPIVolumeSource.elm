{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource exposing (IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource, ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceDecoder, ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource =
    {     }


ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceDecoder : Decoder IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource
ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceDecoder =
    decode IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource



ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceEncoder : IoK8sKubernetesPkgApiV1DownwardAPIVolumeSource -> Encode.Value
ioK8sKubernetesPkgApiV1DownwardAPIVolumeSourceEncoder model =
    Encode.object
        ]


