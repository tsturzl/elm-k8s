{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1Status exposing (IoK8sApimachineryPkgApisMetaV1Status, ioK8sApimachineryPkgApisMetaV1StatusDecoder, ioK8sApimachineryPkgApisMetaV1StatusEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1StatusDetails exposing (IoK8sApimachineryPkgApisMetaV1StatusDetails, ioK8sApimachineryPkgApisMetaV1StatusDetailsDecoder, ioK8sApimachineryPkgApisMetaV1StatusDetailsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1ListMeta exposing (IoK8sApimachineryPkgApisMetaV1ListMeta, ioK8sApimachineryPkgApisMetaV1ListMetaDecoder, ioK8sApimachineryPkgApisMetaV1ListMetaEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Status is a return value for calls that don't return other objects.
-}


type alias IoK8sApimachineryPkgApisMetaV1Status =
    { apiVersion : Maybe String
    , code : Maybe Int
    , details : Maybe IoK8sApimachineryPkgApisMetaV1StatusDetails
    , kind : Maybe String
    , message : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ListMeta
    , reason : Maybe String
    , status : Maybe String
    }


ioK8sApimachineryPkgApisMetaV1StatusDecoder : Decoder IoK8sApimachineryPkgApisMetaV1Status
ioK8sApimachineryPkgApisMetaV1StatusDecoder =
    decode IoK8sApimachineryPkgApisMetaV1Status
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "code" (Decode.nullable Decode.int) Nothing
        |> optional "details" (Decode.nullable ioK8sApimachineryPkgApisMetaV1StatusDetailsDecoder) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "message" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ListMetaDecoder) Nothing
        |> optional "reason" (Decode.nullable Decode.string) Nothing
        |> optional "status" (Decode.nullable Decode.string) Nothing



ioK8sApimachineryPkgApisMetaV1StatusEncoder : IoK8sApimachineryPkgApisMetaV1Status -> Encode.Value
ioK8sApimachineryPkgApisMetaV1StatusEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "code", withDefault Encode.null (map Encode.int model.code) )
        , ( "details", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1StatusDetailsEncoder model.details) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "message", withDefault Encode.null (map Encode.string model.message) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ListMetaEncoder model.metadata) )
        , ( "reason", withDefault Encode.null (map Encode.string model.reason) )
        , ( "status", withDefault Encode.null (map Encode.string model.status) )
        ]


