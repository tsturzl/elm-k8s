{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1ServiceAccountList exposing (IoK8sKubernetesPkgApiV1ServiceAccountList, ioK8sKubernetesPkgApiV1ServiceAccountListDecoder, ioK8sKubernetesPkgApiV1ServiceAccountListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1ServiceAccountList =
    {     }


ioK8sKubernetesPkgApiV1ServiceAccountListDecoder : Decoder IoK8sKubernetesPkgApiV1ServiceAccountList
ioK8sKubernetesPkgApiV1ServiceAccountListDecoder =
    decode IoK8sKubernetesPkgApiV1ServiceAccountList



ioK8sKubernetesPkgApiV1ServiceAccountListEncoder : IoK8sKubernetesPkgApiV1ServiceAccountList -> Encode.Value
ioK8sKubernetesPkgApiV1ServiceAccountListEncoder model =
    Encode.object
        ]

