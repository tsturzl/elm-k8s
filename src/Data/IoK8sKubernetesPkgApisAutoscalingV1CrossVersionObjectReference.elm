{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference exposing (IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference, ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceDecoder, ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference =
    {     }


ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceDecoder : Decoder IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference
ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceDecoder =
    decode IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference



ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceEncoder : IoK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReference -> Encode.Value
ioK8sKubernetesPkgApisAutoscalingV1CrossVersionObjectReferenceEncoder model =
    Encode.object
        ]


