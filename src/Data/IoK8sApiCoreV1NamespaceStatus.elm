{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1NamespaceStatus exposing (IoK8sApiCoreV1NamespaceStatus, ioK8sApiCoreV1NamespaceStatusDecoder, ioK8sApiCoreV1NamespaceStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   NamespaceStatus is information about the current status of a Namespace.
-}


type alias IoK8sApiCoreV1NamespaceStatus =
    { phase : Maybe String
    }


ioK8sApiCoreV1NamespaceStatusDecoder : Decoder IoK8sApiCoreV1NamespaceStatus
ioK8sApiCoreV1NamespaceStatusDecoder =
    decode IoK8sApiCoreV1NamespaceStatus
        |> optional "phase" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1NamespaceStatusEncoder : IoK8sApiCoreV1NamespaceStatus -> Encode.Value
ioK8sApiCoreV1NamespaceStatusEncoder model =
    Encode.object
        [ ( "phase", withDefault Encode.null (map Encode.string model.phase) )
        ]

