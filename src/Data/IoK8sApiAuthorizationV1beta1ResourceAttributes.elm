{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuthorizationV1beta1ResourceAttributes exposing (IoK8sApiAuthorizationV1beta1ResourceAttributes, ioK8sApiAuthorizationV1beta1ResourceAttributesDecoder, ioK8sApiAuthorizationV1beta1ResourceAttributesEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
-}


type alias IoK8sApiAuthorizationV1beta1ResourceAttributes =
    { group : Maybe String
    , name : Maybe String
    , namespace : Maybe String
    , resource : Maybe String
    , subresource : Maybe String
    , verb : Maybe String
    , version : Maybe String
    }


ioK8sApiAuthorizationV1beta1ResourceAttributesDecoder : Decoder IoK8sApiAuthorizationV1beta1ResourceAttributes
ioK8sApiAuthorizationV1beta1ResourceAttributesDecoder =
    decode IoK8sApiAuthorizationV1beta1ResourceAttributes
        |> optional "group" (Decode.nullable Decode.string) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing
        |> optional "namespace" (Decode.nullable Decode.string) Nothing
        |> optional "resource" (Decode.nullable Decode.string) Nothing
        |> optional "subresource" (Decode.nullable Decode.string) Nothing
        |> optional "verb" (Decode.nullable Decode.string) Nothing
        |> optional "version" (Decode.nullable Decode.string) Nothing



ioK8sApiAuthorizationV1beta1ResourceAttributesEncoder : IoK8sApiAuthorizationV1beta1ResourceAttributes -> Encode.Value
ioK8sApiAuthorizationV1beta1ResourceAttributesEncoder model =
    Encode.object
        [ ( "group", withDefault Encode.null (map Encode.string model.group) )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        , ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        , ( "resource", withDefault Encode.null (map Encode.string model.resource) )
        , ( "subresource", withDefault Encode.null (map Encode.string model.subresource) )
        , ( "verb", withDefault Encode.null (map Encode.string model.verb) )
        , ( "version", withDefault Encode.null (map Encode.string model.version) )
        ]


