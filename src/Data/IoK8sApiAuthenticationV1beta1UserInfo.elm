{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuthenticationV1beta1UserInfo exposing (IoK8sApiAuthenticationV1beta1UserInfo, ioK8sApiAuthenticationV1beta1UserInfoDecoder, ioK8sApiAuthenticationV1beta1UserInfoEncoder)

import Data.List exposing (List, stringDecoder, stringEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   UserInfo holds the information about the user needed to implement the user.Info interface.
-}


type alias IoK8sApiAuthenticationV1beta1UserInfo =
    { extra : Maybe (List String)
    , groups : Maybe (List String)
    , uid : Maybe String
    , username : Maybe String
    }


ioK8sApiAuthenticationV1beta1UserInfoDecoder : Decoder IoK8sApiAuthenticationV1beta1UserInfo
ioK8sApiAuthenticationV1beta1UserInfoDecoder =
    decode IoK8sApiAuthenticationV1beta1UserInfo
        |> optional "extra" (Decode.nullable (Decode.list stringDecoder)) Nothing
        |> optional "groups" (Decode.nullable (Decode.list Decode.string)) Nothing
        |> optional "uid" (Decode.nullable Decode.string) Nothing
        |> optional "username" (Decode.nullable Decode.string) Nothing



ioK8sApiAuthenticationV1beta1UserInfoEncoder : IoK8sApiAuthenticationV1beta1UserInfo -> Encode.Value
ioK8sApiAuthenticationV1beta1UserInfoEncoder model =
    Encode.object
        [ ( "extra", withDefault Encode.null (map (Encode.list << List.map stringEncoder) model.extra) )
        , ( "groups", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.groups) )
        , ( "uid", withDefault Encode.null (map Encode.string model.uid) )
        , ( "username", withDefault Encode.null (map Encode.string model.username) )
        ]


