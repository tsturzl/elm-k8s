{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1ServiceStatus exposing (IoK8sKubernetesPkgApiV1ServiceStatus, ioK8sKubernetesPkgApiV1ServiceStatusDecoder, ioK8sKubernetesPkgApiV1ServiceStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1ServiceStatus =
    {     }


ioK8sKubernetesPkgApiV1ServiceStatusDecoder : Decoder IoK8sKubernetesPkgApiV1ServiceStatus
ioK8sKubernetesPkgApiV1ServiceStatusDecoder =
    decode IoK8sKubernetesPkgApiV1ServiceStatus



ioK8sKubernetesPkgApiV1ServiceStatusEncoder : IoK8sKubernetesPkgApiV1ServiceStatus -> Encode.Value
ioK8sKubernetesPkgApiV1ServiceStatusEncoder model =
    Encode.object
        ]


