{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1HTTPGetAction exposing (IoK8sApiCoreV1HTTPGetAction, ioK8sApiCoreV1HTTPGetActionDecoder, ioK8sApiCoreV1HTTPGetActionEncoder)

import Data.IoK8sApiCoreV1HTTPHeader exposing (IoK8sApiCoreV1HTTPHeader, ioK8sApiCoreV1HTTPHeaderDecoder, ioK8sApiCoreV1HTTPHeaderEncoder)
import Data.IoK8sApimachineryPkgUtilIntstrIntOrString exposing (IoK8sApimachineryPkgUtilIntstrIntOrString, ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder, ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HTTPGetAction describes an action based on HTTP Get requests.
-}


type alias IoK8sApiCoreV1HTTPGetAction =
    { host : Maybe String
    , httpHeaders : Maybe (List IoK8sApiCoreV1HTTPHeader)
    , path : Maybe String
    , port_ : IoK8sApimachineryPkgUtilIntstrIntOrString
    , scheme : Maybe String
    }


ioK8sApiCoreV1HTTPGetActionDecoder : Decoder IoK8sApiCoreV1HTTPGetAction
ioK8sApiCoreV1HTTPGetActionDecoder =
    decode IoK8sApiCoreV1HTTPGetAction
        |> optional "host" (Decode.nullable Decode.string) Nothing
        |> optional "httpHeaders" (Decode.nullable (Decode.list ioK8sApiCoreV1HTTPHeaderDecoder)) Nothing
        |> optional "path" (Decode.nullable Decode.string) Nothing
        |> required "port" ioK8sApimachineryPkgUtilIntstrIntOrStringDecoder
        |> optional "scheme" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1HTTPGetActionEncoder : IoK8sApiCoreV1HTTPGetAction -> Encode.Value
ioK8sApiCoreV1HTTPGetActionEncoder model =
    Encode.object
        [ ( "host", withDefault Encode.null (map Encode.string model.host) )
        , ( "httpHeaders", withDefault Encode.null (map (Encode.list << List.map ioK8sApiCoreV1HTTPHeaderEncoder) model.httpHeaders) )
        , ( "path", withDefault Encode.null (map Encode.string model.path) )
        , ( "port", ioK8sApimachineryPkgUtilIntstrIntOrStringEncoder model.port_ )
        , ( "scheme", withDefault Encode.null (map Encode.string model.scheme) )
        ]


