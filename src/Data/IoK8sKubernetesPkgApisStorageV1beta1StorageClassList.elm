{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisStorageV1beta1StorageClassList exposing (IoK8sKubernetesPkgApisStorageV1beta1StorageClassList, ioK8sKubernetesPkgApisStorageV1beta1StorageClassListDecoder, ioK8sKubernetesPkgApisStorageV1beta1StorageClassListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisStorageV1beta1StorageClassList =
    {     }


ioK8sKubernetesPkgApisStorageV1beta1StorageClassListDecoder : Decoder IoK8sKubernetesPkgApisStorageV1beta1StorageClassList
ioK8sKubernetesPkgApisStorageV1beta1StorageClassListDecoder =
    decode IoK8sKubernetesPkgApisStorageV1beta1StorageClassList



ioK8sKubernetesPkgApisStorageV1beta1StorageClassListEncoder : IoK8sKubernetesPkgApisStorageV1beta1StorageClassList -> Encode.Value
ioK8sKubernetesPkgApisStorageV1beta1StorageClassListEncoder model =
    Encode.object
        ]


