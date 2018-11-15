{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ContainerPort exposing (IoK8sApiCoreV1ContainerPort, ioK8sApiCoreV1ContainerPortDecoder, ioK8sApiCoreV1ContainerPortEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ContainerPort represents a network port in a single container.
-}


type alias IoK8sApiCoreV1ContainerPort =
    { containerPort : Int
    , hostIP : Maybe String
    , hostPort : Maybe Int
    , name : Maybe String
    , protocol : Maybe String
    }


ioK8sApiCoreV1ContainerPortDecoder : Decoder IoK8sApiCoreV1ContainerPort
ioK8sApiCoreV1ContainerPortDecoder =
    decode IoK8sApiCoreV1ContainerPort
        |> required "containerPort" Decode.int
        |> optional "hostIP" (Decode.nullable Decode.string) Nothing
        |> optional "hostPort" (Decode.nullable Decode.int) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "protocol" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1ContainerPortEncoder : IoK8sApiCoreV1ContainerPort -> Encode.Value
ioK8sApiCoreV1ContainerPortEncoder model =
    Encode.object
        [ ( "containerPort", Encode.int model.containerPort )
        , ( "hostIP", withDefault Encode.null (map Encode.string model.hostIP) )
        , ( "hostPort", withDefault Encode.null (map Encode.int model.hostPort) )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "protocol", withDefault Encode.null (map Encode.string model.protocol) )
        ]


