{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig exposing (IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig, ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigDecoder, ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig =
    {     }


ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigDecoder : Decoder IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig
ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigDecoder =
    decode IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig



ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigEncoder : IoK8sKubernetesPkgApisExtensionsV1beta1RollbackConfig -> Encode.Value
ioK8sKubernetesPkgApisExtensionsV1beta1RollbackConfigEncoder model =
    Encode.object
        ]


