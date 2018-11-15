{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1PodReadinessGate exposing (IoK8sApiCoreV1PodReadinessGate, ioK8sApiCoreV1PodReadinessGateDecoder, ioK8sApiCoreV1PodReadinessGateEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   PodReadinessGate contains the reference to a pod condition
-}


type alias IoK8sApiCoreV1PodReadinessGate =
    { conditionType : String
    }


ioK8sApiCoreV1PodReadinessGateDecoder : Decoder IoK8sApiCoreV1PodReadinessGate
ioK8sApiCoreV1PodReadinessGateDecoder =
    decode IoK8sApiCoreV1PodReadinessGate
        |> required "conditionType" Decode.string



ioK8sApiCoreV1PodReadinessGateEncoder : IoK8sApiCoreV1PodReadinessGate -> Encode.Value
ioK8sApiCoreV1PodReadinessGateEncoder model =
    Encode.object
        [ ( "conditionType", Encode.string model.conditionType )
        ]

