{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1ComponentStatus exposing (IoK8sKubernetesPkgApiV1ComponentStatus, ioK8sKubernetesPkgApiV1ComponentStatusDecoder, ioK8sKubernetesPkgApiV1ComponentStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1ComponentStatus =
    {     }


ioK8sKubernetesPkgApiV1ComponentStatusDecoder : Decoder IoK8sKubernetesPkgApiV1ComponentStatus
ioK8sKubernetesPkgApiV1ComponentStatusDecoder =
    decode IoK8sKubernetesPkgApiV1ComponentStatus



ioK8sKubernetesPkgApiV1ComponentStatusEncoder : IoK8sKubernetesPkgApiV1ComponentStatus -> Encode.Value
ioK8sKubernetesPkgApiV1ComponentStatusEncoder model =
    Encode.object
        ]


