{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus exposing (IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus, ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusDecoder, ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus =
    {     }


ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusDecoder : Decoder IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus
ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusDecoder =
    decode IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus



ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusEncoder : IoK8sKubernetesPkgApisAppsV1beta1ScaleStatus -> Encode.Value
ioK8sKubernetesPkgApisAppsV1beta1ScaleStatusEncoder model =
    Encode.object
        ]


