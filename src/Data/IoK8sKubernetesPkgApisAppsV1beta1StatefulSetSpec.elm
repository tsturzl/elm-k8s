{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec exposing (IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec, ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecDecoder, ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec =
    {     }


ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecDecoder : Decoder IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec
ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecDecoder =
    decode IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec



ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecEncoder : IoK8sKubernetesPkgApisAppsV1beta1StatefulSetSpec -> Encode.Value
ioK8sKubernetesPkgApisAppsV1beta1StatefulSetSpecEncoder model =
    Encode.object
        ]

