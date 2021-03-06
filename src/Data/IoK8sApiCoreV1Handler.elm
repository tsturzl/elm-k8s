{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Handler exposing (IoK8sApiCoreV1Handler, ioK8sApiCoreV1HandlerDecoder, ioK8sApiCoreV1HandlerEncoder)

import Data.IoK8sApiCoreV1ExecAction exposing (IoK8sApiCoreV1ExecAction, ioK8sApiCoreV1ExecActionDecoder, ioK8sApiCoreV1ExecActionEncoder)
import Data.IoK8sApiCoreV1HTTPGetAction exposing (IoK8sApiCoreV1HTTPGetAction, ioK8sApiCoreV1HTTPGetActionDecoder, ioK8sApiCoreV1HTTPGetActionEncoder)
import Data.IoK8sApiCoreV1TCPSocketAction exposing (IoK8sApiCoreV1TCPSocketAction, ioK8sApiCoreV1TCPSocketActionDecoder, ioK8sApiCoreV1TCPSocketActionEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Handler defines a specific action that should be taken
-}


type alias IoK8sApiCoreV1Handler =
    { exec : Maybe IoK8sApiCoreV1ExecAction
    , httpGet : Maybe IoK8sApiCoreV1HTTPGetAction
    , tcpSocket : Maybe IoK8sApiCoreV1TCPSocketAction
    }


ioK8sApiCoreV1HandlerDecoder : Decoder IoK8sApiCoreV1Handler
ioK8sApiCoreV1HandlerDecoder =
    decode IoK8sApiCoreV1Handler
        |> optional "exec" (Decode.nullable ioK8sApiCoreV1ExecActionDecoder) Nothing
        |> optional "httpGet" (Decode.nullable ioK8sApiCoreV1HTTPGetActionDecoder) Nothing
        |> optional "tcpSocket" (Decode.nullable ioK8sApiCoreV1TCPSocketActionDecoder) Nothing



ioK8sApiCoreV1HandlerEncoder : IoK8sApiCoreV1Handler -> Encode.Value
ioK8sApiCoreV1HandlerEncoder model =
    Encode.object
        [ ( "exec", withDefault Encode.null (map ioK8sApiCoreV1ExecActionEncoder model.exec) )
        , ( "httpGet", withDefault Encode.null (map ioK8sApiCoreV1HTTPGetActionEncoder model.httpGet) )
        , ( "tcpSocket", withDefault Encode.null (map ioK8sApiCoreV1TCPSocketActionEncoder model.tcpSocket) )
        ]


