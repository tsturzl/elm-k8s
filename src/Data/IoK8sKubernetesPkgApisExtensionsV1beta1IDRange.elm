{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisExtensionsV1beta1IDRange exposing (IoK8sKubernetesPkgApisExtensionsV1beta1IDRange, ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeDecoder, ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisExtensionsV1beta1IDRange =
    {     }


ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeDecoder : Decoder IoK8sKubernetesPkgApisExtensionsV1beta1IDRange
ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeDecoder =
    decode IoK8sKubernetesPkgApisExtensionsV1beta1IDRange



ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeEncoder : IoK8sKubernetesPkgApisExtensionsV1beta1IDRange -> Encode.Value
ioK8sKubernetesPkgApisExtensionsV1beta1IDRangeEncoder model =
    Encode.object
        ]


