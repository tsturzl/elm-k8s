{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiRbacV1Subject exposing (IoK8sApiRbacV1Subject, ioK8sApiRbacV1SubjectDecoder, ioK8sApiRbacV1SubjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
-}


type alias IoK8sApiRbacV1Subject =
    { apiGroup : Maybe String
    , kind : String
    , name : String
    , namespace : Maybe String
    }


ioK8sApiRbacV1SubjectDecoder : Decoder IoK8sApiRbacV1Subject
ioK8sApiRbacV1SubjectDecoder =
    decode IoK8sApiRbacV1Subject
        |> optional "apiGroup" (Decode.nullable Decode.string) Nothing
        |> required "kind" Decode.string
        |> required "name" Decode.string
        |> optional "namespace" (Decode.nullable Decode.string) Nothing



ioK8sApiRbacV1SubjectEncoder : IoK8sApiRbacV1Subject -> Encode.Value
ioK8sApiRbacV1SubjectEncoder model =
    Encode.object
        [ ( "apiGroup", withDefault Encode.null (map Encode.string model.apiGroup) )
        , ( "kind", Encode.string model.kind )
        , ( "name", Encode.string model.name )
        , ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        ]


