{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisPolicyV1beta1Eviction exposing (IoK8sKubernetesPkgApisPolicyV1beta1Eviction, ioK8sKubernetesPkgApisPolicyV1beta1EvictionDecoder, ioK8sKubernetesPkgApisPolicyV1beta1EvictionEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisPolicyV1beta1Eviction =
    {     }


ioK8sKubernetesPkgApisPolicyV1beta1EvictionDecoder : Decoder IoK8sKubernetesPkgApisPolicyV1beta1Eviction
ioK8sKubernetesPkgApisPolicyV1beta1EvictionDecoder =
    decode IoK8sKubernetesPkgApisPolicyV1beta1Eviction



ioK8sKubernetesPkgApisPolicyV1beta1EvictionEncoder : IoK8sKubernetesPkgApisPolicyV1beta1Eviction -> Encode.Value
ioK8sKubernetesPkgApisPolicyV1beta1EvictionEncoder model =
    Encode.object
        ]


