{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAutoscalingV1CrossVersionObjectReference exposing (IoK8sApiAutoscalingV1CrossVersionObjectReference, ioK8sApiAutoscalingV1CrossVersionObjectReferenceDecoder, ioK8sApiAutoscalingV1CrossVersionObjectReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CrossVersionObjectReference contains enough information to let you identify the referred resource.
-}


type alias IoK8sApiAutoscalingV1CrossVersionObjectReference =
    { apiVersion : Maybe String
    , kind : String
    , name : String
    }


ioK8sApiAutoscalingV1CrossVersionObjectReferenceDecoder : Decoder IoK8sApiAutoscalingV1CrossVersionObjectReference
ioK8sApiAutoscalingV1CrossVersionObjectReferenceDecoder =
    decode IoK8sApiAutoscalingV1CrossVersionObjectReference
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> required "kind" Decode.string
        |> required "name" Decode.string



ioK8sApiAutoscalingV1CrossVersionObjectReferenceEncoder : IoK8sApiAutoscalingV1CrossVersionObjectReference -> Encode.Value
ioK8sApiAutoscalingV1CrossVersionObjectReferenceEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", Encode.string model.kind )
        , ( "name", Encode.string model.name )
        ]


