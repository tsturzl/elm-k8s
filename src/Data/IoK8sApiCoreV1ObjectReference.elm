{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ObjectReference exposing (IoK8sApiCoreV1ObjectReference, ioK8sApiCoreV1ObjectReferenceDecoder, ioK8sApiCoreV1ObjectReferenceEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ObjectReference contains enough information to let you inspect or modify the referred object.
-}


type alias IoK8sApiCoreV1ObjectReference =
    { apiVersion : Maybe String
    , fieldPath : Maybe String
    , kind : Maybe String
    , name : Maybe String
    , namespace : Maybe String
    , resourceVersion : Maybe String
    , uid : Maybe String
    }


ioK8sApiCoreV1ObjectReferenceDecoder : Decoder IoK8sApiCoreV1ObjectReference
ioK8sApiCoreV1ObjectReferenceDecoder =
    decode IoK8sApiCoreV1ObjectReference
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "fieldPath" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "namespace" (Decode.nullable Decode.string) Nothing
        |> optional "resourceVersion" (Decode.nullable Decode.string) Nothing
        |> optional "uid" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1ObjectReferenceEncoder : IoK8sApiCoreV1ObjectReference -> Encode.Value
ioK8sApiCoreV1ObjectReferenceEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "fieldPath", withDefault Encode.null (map Encode.string model.fieldPath) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        , ( "resourceVersion", withDefault Encode.null (map Encode.string model.resourceVersion) )
        , ( "uid", withDefault Encode.null (map Encode.string model.uid) )
        ]


