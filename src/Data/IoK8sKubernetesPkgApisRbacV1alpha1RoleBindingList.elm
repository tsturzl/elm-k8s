{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList exposing (IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList, ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListDecoder, ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList =
    {     }


ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListDecoder : Decoder IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList
ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListDecoder =
    decode IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList



ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListEncoder : IoK8sKubernetesPkgApisRbacV1alpha1RoleBindingList -> Encode.Value
ioK8sKubernetesPkgApisRbacV1alpha1RoleBindingListEncoder model =
    Encode.object
        ]


