{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1SecretList exposing (IoK8sKubernetesPkgApiV1SecretList, ioK8sKubernetesPkgApiV1SecretListDecoder, ioK8sKubernetesPkgApiV1SecretListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1SecretList =
    {     }


ioK8sKubernetesPkgApiV1SecretListDecoder : Decoder IoK8sKubernetesPkgApiV1SecretList
ioK8sKubernetesPkgApiV1SecretListDecoder =
    decode IoK8sKubernetesPkgApiV1SecretList



ioK8sKubernetesPkgApiV1SecretListEncoder : IoK8sKubernetesPkgApiV1SecretList -> Encode.Value
ioK8sKubernetesPkgApiV1SecretListEncoder model =
    Encode.object
        ]


