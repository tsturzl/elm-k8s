{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApiV1LimitRange exposing (IoK8sKubernetesPkgApiV1LimitRange, ioK8sKubernetesPkgApiV1LimitRangeDecoder, ioK8sKubernetesPkgApiV1LimitRangeEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApiV1LimitRange =
    {     }


ioK8sKubernetesPkgApiV1LimitRangeDecoder : Decoder IoK8sKubernetesPkgApiV1LimitRange
ioK8sKubernetesPkgApiV1LimitRangeDecoder =
    decode IoK8sKubernetesPkgApiV1LimitRange



ioK8sKubernetesPkgApiV1LimitRangeEncoder : IoK8sKubernetesPkgApiV1LimitRange -> Encode.Value
ioK8sKubernetesPkgApiV1LimitRangeEncoder model =
    Encode.object
        ]


