{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer exposing (IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer, ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerDecoder, ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer =
    {     }


ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerDecoder : Decoder IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer
ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerDecoder =
    decode IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer



ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerEncoder : IoK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeer -> Encode.Value
ioK8sKubernetesPkgApisExtensionsV1beta1NetworkPolicyPeerEncoder model =
    Encode.object
        ]


