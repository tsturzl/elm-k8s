{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1SecretKeySelector exposing (IoK8sKubernetesPkgApiV1SecretKeySelector, ioK8sKubernetesPkgApiV1SecretKeySelectorDecoder, ioK8sKubernetesPkgApiV1SecretKeySelectorEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1SecretKeySelector =
    {     }


ioK8sKubernetesPkgApiV1SecretKeySelectorDecoder : Decoder IoK8sKubernetesPkgApiV1SecretKeySelector
ioK8sKubernetesPkgApiV1SecretKeySelectorDecoder =
    decode IoK8sKubernetesPkgApiV1SecretKeySelector



ioK8sKubernetesPkgApiV1SecretKeySelectorEncoder : IoK8sKubernetesPkgApiV1SecretKeySelector -> Encode.Value
ioK8sKubernetesPkgApiV1SecretKeySelectorEncoder model =
    Encode.object
        ]


