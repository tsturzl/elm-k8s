{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ExternalDocumentation allows referencing an external resource for extended documentation.
-}


type alias IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation =
    { description : Maybe String
    , url : Maybe String
    }


ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationDecoder : Decoder IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationDecoder =
    decode IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation
        |> optional "description" (Decode.nullable Decode.string) Nothing
        |> optional "url" (Decode.nullable Decode.string) Nothing



ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationEncoder : IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentation -> Encode.Value
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1ExternalDocumentationEncoder model =
    Encode.object
        [ ( "description", withDefault Encode.null (map Encode.string model.description) )
        , ( "url", withDefault Encode.null (map Encode.string model.url) )
        ]


