{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisBatchV1Job exposing (IoK8sKubernetesPkgApisBatchV1Job, ioK8sKubernetesPkgApisBatchV1JobDecoder, ioK8sKubernetesPkgApisBatchV1JobEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisBatchV1Job =
    {     }


ioK8sKubernetesPkgApisBatchV1JobDecoder : Decoder IoK8sKubernetesPkgApisBatchV1Job
ioK8sKubernetesPkgApisBatchV1JobDecoder =
    decode IoK8sKubernetesPkgApisBatchV1Job



ioK8sKubernetesPkgApisBatchV1JobEncoder : IoK8sKubernetesPkgApisBatchV1Job -> Encode.Value
ioK8sKubernetesPkgApisBatchV1JobEncoder model =
    Encode.object
        ]


