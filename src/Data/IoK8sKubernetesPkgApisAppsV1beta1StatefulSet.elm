{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAppsV1beta1StatefulSet exposing (IoK8sKubernetesPkgApisAppsV1beta1StatefulSet, ioK8sKubernetesPkgApisAppsV1beta1StatefulSetDecoder, ioK8sKubernetesPkgApisAppsV1beta1StatefulSetEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAppsV1beta1StatefulSet =
    {     }


ioK8sKubernetesPkgApisAppsV1beta1StatefulSetDecoder : Decoder IoK8sKubernetesPkgApisAppsV1beta1StatefulSet
ioK8sKubernetesPkgApisAppsV1beta1StatefulSetDecoder =
    decode IoK8sKubernetesPkgApisAppsV1beta1StatefulSet



ioK8sKubernetesPkgApisAppsV1beta1StatefulSetEncoder : IoK8sKubernetesPkgApisAppsV1beta1StatefulSet -> Encode.Value
ioK8sKubernetesPkgApisAppsV1beta1StatefulSetEncoder model =
    Encode.object
        ]

