{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList exposing (IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList, ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListDecoder, ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList =
    {     }


ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListDecoder : Decoder IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList
ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListDecoder =
    decode IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList



ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListEncoder : IoK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyList -> Encode.Value
ioK8sKubernetesPkgApisExtensionsV1beta1PodSecurityPolicyListEncoder model =
    Encode.object
        ]

