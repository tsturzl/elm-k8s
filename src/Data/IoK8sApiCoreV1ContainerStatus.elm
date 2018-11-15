{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ContainerStatus exposing (IoK8sApiCoreV1ContainerStatus, ioK8sApiCoreV1ContainerStatusDecoder, ioK8sApiCoreV1ContainerStatusEncoder)

import Data.IoK8sApiCoreV1ContainerState exposing (IoK8sApiCoreV1ContainerState, ioK8sApiCoreV1ContainerStateDecoder, ioK8sApiCoreV1ContainerStateEncoder)
import Data.IoK8sApiCoreV1ContainerState exposing (IoK8sApiCoreV1ContainerState, ioK8sApiCoreV1ContainerStateDecoder, ioK8sApiCoreV1ContainerStateEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ContainerStatus contains details for the current status of this container.
-}


type alias IoK8sApiCoreV1ContainerStatus =
    { containerID : Maybe String
    , image : String
    , imageID : String
    , lastState : Maybe IoK8sApiCoreV1ContainerState
    , name : String
    , ready : Bool
    , restartCount : Int
    , state : Maybe IoK8sApiCoreV1ContainerState
    }


ioK8sApiCoreV1ContainerStatusDecoder : Decoder IoK8sApiCoreV1ContainerStatus
ioK8sApiCoreV1ContainerStatusDecoder =
    decode IoK8sApiCoreV1ContainerStatus
        |> optional "containerID" (Decode.nullable Decode.string) Nothing
        |> required "image" Decode.string
        |> required "imageID" Decode.string
        |> optional "lastState" (Decode.nullable ioK8sApiCoreV1ContainerStateDecoder) Nothing
        |> required "name" Decode.string
        |> required "ready" Decode.bool
        |> required "restartCount" Decode.int
        |> optional "state" (Decode.nullable ioK8sApiCoreV1ContainerStateDecoder) Nothing



ioK8sApiCoreV1ContainerStatusEncoder : IoK8sApiCoreV1ContainerStatus -> Encode.Value
ioK8sApiCoreV1ContainerStatusEncoder model =
    Encode.object
        [ ( "containerID", withDefault Encode.null (map Encode.string model.containerID) )
        , ( "image", Encode.string model.image )
        , ( "imageID", Encode.string model.imageID )
        , ( "lastState", withDefault Encode.null (map ioK8sApiCoreV1ContainerStateEncoder model.lastState) )
        , ( "name", Encode.string model.name )
        , ( "ready", Encode.bool model.ready )
        , ( "restartCount", Encode.int model.restartCount )
        , ( "state", withDefault Encode.null (map ioK8sApiCoreV1ContainerStateEncoder model.state) )
        ]


