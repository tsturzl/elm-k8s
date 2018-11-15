{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec exposing (IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecDecoder, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecEncoder)

import Byte exposing (Byte, byteDecoder, byteEncoder)
import Data.IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference exposing (IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceDecoder, ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
-}


type alias IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec =
    { caBundle : Maybe Byte
    , group : Maybe String
    , groupPriorityMinimum : Int
    , insecureSkipTLSVerify : Maybe Bool
    , service : IoK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReference
    , version : Maybe String
    , versionPriority : Int
    }


ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecDecoder : Decoder IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec
ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecDecoder =
    decode IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec
        |> optional "caBundle" (Decode.nullable byteDecoder) Nothing
        |> optional "group" (Decode.nullable Decode.string) Nothing
        |> required "groupPriorityMinimum" Decode.int
        |> optional "insecureSkipTLSVerify" (Decode.nullable Decode.bool) Nothing
        |> required "service" ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceDecoder
        |> optional "version" (Decode.nullable Decode.string) Nothing
        |> required "versionPriority" Decode.int



ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecEncoder : IoK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpec -> Encode.Value
ioK8sKubeAggregatorPkgApisApiregistrationV1beta1APIServiceSpecEncoder model =
    Encode.object
        [ ( "caBundle", withDefault Encode.null (map byteEncoder model.caBundle) )
        , ( "group", withDefault Encode.null (map Encode.string model.group) )
        , ( "groupPriorityMinimum", Encode.int model.groupPriorityMinimum )
        , ( "insecureSkipTLSVerify", withDefault Encode.null (map Encode.bool model.insecureSkipTLSVerify) )
        , ( "service", ioK8sKubeAggregatorPkgApisApiregistrationV1beta1ServiceReferenceEncoder model.service )
        , ( "version", withDefault Encode.null (map Encode.string model.version) )
        , ( "versionPriority", Encode.int model.versionPriority )
        ]


