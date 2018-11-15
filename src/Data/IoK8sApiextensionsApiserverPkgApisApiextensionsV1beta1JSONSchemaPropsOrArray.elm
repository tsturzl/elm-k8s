{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
-}


type alias IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray =
    {     }


ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayDecoder : Decoder IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayDecoder =
    decode IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray



ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayEncoder : IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArray -> Encode.Value
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrArrayEncoder model =
    Encode.object
        ]


