{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList exposing (IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList, ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListDecoder, ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList =
    {     }


ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListDecoder : Decoder IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList
ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListDecoder =
    decode IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList



ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListEncoder : IoK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetList -> Encode.Value
ioK8sKubernetesPkgApisPolicyV1beta1PodDisruptionBudgetListEncoder model =
    Encode.object
        ]


