{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1Namespace exposing (IoK8sKubernetesPkgApiV1Namespace, ioK8sKubernetesPkgApiV1NamespaceDecoder, ioK8sKubernetesPkgApiV1NamespaceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1Namespace =
    {     }


ioK8sKubernetesPkgApiV1NamespaceDecoder : Decoder IoK8sKubernetesPkgApiV1Namespace
ioK8sKubernetesPkgApiV1NamespaceDecoder =
    decode IoK8sKubernetesPkgApiV1Namespace



ioK8sKubernetesPkgApiV1NamespaceEncoder : IoK8sKubernetesPkgApiV1Namespace -> Encode.Value
ioK8sKubernetesPkgApiV1NamespaceEncoder model =
    Encode.object
        ]


