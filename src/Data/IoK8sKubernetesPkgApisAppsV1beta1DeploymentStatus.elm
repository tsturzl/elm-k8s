{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus exposing (IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus, ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusDecoder, ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus =
    {     }


ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusDecoder : Decoder IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus
ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusDecoder =
    decode IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus



ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusEncoder : IoK8sKubernetesPkgApisAppsV1beta1DeploymentStatus -> Encode.Value
ioK8sKubernetesPkgApisAppsV1beta1DeploymentStatusEncoder model =
    Encode.object
        ]

