{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec exposing (IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec, ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecDecoder, ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec =
    {     }


ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecDecoder : Decoder IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec
ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecDecoder =
    decode IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec



ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecEncoder : IoK8sKubernetesPkgApisAutoscalingV1ScaleSpec -> Encode.Value
ioK8sKubernetesPkgApisAutoscalingV1ScaleSpecEncoder model =
    Encode.object
        ]

