{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec exposing (IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec, ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecDecoder, ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec =
    {     }


ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecDecoder : Decoder IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec
ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecDecoder =
    decode IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec



ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecEncoder : IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpec -> Encode.Value
ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetSpecEncoder model =
    Encode.object
        ]

