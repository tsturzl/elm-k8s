{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList exposing (IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList, ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListDecoder, ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList =
    {     }


ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListDecoder : Decoder IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList
ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListDecoder =
    decode IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList



ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListEncoder : IoK8sKubernetesPkgApisRbacV1alpha1ClusterRoleList -> Encode.Value
ioK8sKubernetesPkgApisRbacV1alpha1ClusterRoleListEncoder model =
    Encode.object
        ]


