{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LocalObjectReference exposing (IoK8sApiCoreV1LocalObjectReference, ioK8sApiCoreV1LocalObjectReferenceDecoder, ioK8sApiCoreV1LocalObjectReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
-}


type alias IoK8sApiCoreV1LocalObjectReference =
    { name : Maybe String
    }


ioK8sApiCoreV1LocalObjectReferenceDecoder : Decoder IoK8sApiCoreV1LocalObjectReference
ioK8sApiCoreV1LocalObjectReferenceDecoder =
    decode IoK8sApiCoreV1LocalObjectReference
        |> optional "name" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1LocalObjectReferenceEncoder : IoK8sApiCoreV1LocalObjectReference -> Encode.Value
ioK8sApiCoreV1LocalObjectReferenceEncoder model =
    Encode.object
        [ ( "name", withDefault Encode.null (map Encode.string model.name) )
        ]

