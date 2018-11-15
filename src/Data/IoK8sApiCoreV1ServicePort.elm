{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ServicePort exposing (IoK8sApiCoreV1ServicePort, ioK8sApiCoreV1ServicePortDecoder, ioK8sApiCoreV1ServicePortEncoder)

import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ServicePort contains information on service's port.
-}


type alias IoK8sApiCoreV1ServicePort =
    { name : Maybe String
    , nodePort : Maybe Int
    , port_ : Int
    , protocol : Maybe String
    , targetPort : Maybe IoK8sApimachineryPkgUtilIntstrIntOrString
    }


ioK8sApiCoreV1ServicePortDecoder : Decoder IoK8sApiCoreV1ServicePort
ioK8sApiCoreV1ServicePortDecoder =
    decode IoK8sApiCoreV1ServicePort
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "nodePort" (Decode.nullable Decode.int) Nothing
        |> required "port" Decode.int
        |> optional "protocol" (Decode.nullable Decode.string) Nothing
        |> optional "targetPort" (Decode.nullable ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder) Nothing



ioK8sApiCoreV1ServicePortEncoder : IoK8sApiCoreV1ServicePort -> Encode.Value
ioK8sApiCoreV1ServicePortEncoder model =
    Encode.object
        [ ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "nodePort", withDefault Encode.null (map Encode.int model.nodePort) )
        , ( "port", Encode.int model.port_ )
        , ( "protocol", withDefault Encode.null (map Encode.string model.protocol) )
        , ( "targetPort", withDefault Encode.null (map ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.targetPort) )
        ]


