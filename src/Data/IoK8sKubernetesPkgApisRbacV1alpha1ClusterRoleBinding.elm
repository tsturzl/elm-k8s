{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding exposing (IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding, ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingDecoder, ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding =
    {     }


ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingDecoder : Decoder IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding
ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingDecoder =
    decode IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding



ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingEncoder : IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBinding -> Encode.Value
ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleBindingEncoder model =
    Encode.object
        ]

