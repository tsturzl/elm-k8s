{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet exposing (IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet, ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetDecoder, ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet =
    {     }


ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetDecoder : Decoder IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet
ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetDecoder =
    decode IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet



ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetEncoder : IoK8sKubernetesPkgApisExtensionsV1beta1ReplicaSet -> Encode.Value
ioK8sKubernetesPkgApisExtensionsV1beta1ReplicaSetEncoder model =
    Encode.object
        ]

