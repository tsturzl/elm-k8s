{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList exposing (IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList, ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListDecoder, ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList =
    {     }


ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListDecoder : Decoder IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList
ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListDecoder =
    decode IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList



ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListEncoder : IoK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingList -> Encode.Value
ioK8sKubernetesPkgApisRbacV1beta1ClusterRoleBindingListEncoder model =
    Encode.object
        ]

