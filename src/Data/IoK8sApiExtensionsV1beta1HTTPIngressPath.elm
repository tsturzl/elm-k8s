{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiExtensionsV1beta1HTTPIngressPath exposing (IoK8sApiExtensionsV1beta1HTTPIngressPath, ioK8sApiExtensionsV1beta1HTTPIngressPathDecoder, ioK8sApiExtensionsV1beta1HTTPIngressPathEncoder)

import Data.IoK8sApiExtensionsV1beta1IngressBackend exposing (IoK8sApiExtensionsV1beta1IngressBackend, ioK8sApiExtensionsV1beta1IngressBackendDecoder, ioK8sApiExtensionsV1beta1IngressBackendEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   HTTPIngressPath associates a path regex with a backend. Incoming urls matching the path are forwarded to the backend.
-}


type alias IoK8sApiExtensionsV1beta1HTTPIngressPath =
    { backend : IoK8sApiExtensionsV1beta1IngressBackend
    , path : Maybe String
    }


ioK8sApiExtensionsV1beta1HTTPIngressPathDecoder : Decoder IoK8sApiExtensionsV1beta1HTTPIngressPath
ioK8sApiExtensionsV1beta1HTTPIngressPathDecoder =
    decode IoK8sApiExtensionsV1beta1HTTPIngressPath
        |> required "backend" ioK8sApiExtensionsV1beta1IngressBackendDecoder
        |> optional "path" (Decode.nullable Decode.string) Nothing



ioK8sApiExtensionsV1beta1HTTPIngressPathEncoder : IoK8sApiExtensionsV1beta1HTTPIngressPath -> Encode.Value
ioK8sApiExtensionsV1beta1HTTPIngressPathEncoder model =
    Encode.object
        [ ( "backend", ioK8sApiExtensionsV1beta1IngressBackendEncoder model.backend )
        , ( "path", withDefault Encode.null (map Encode.string model.path) )
        ]


