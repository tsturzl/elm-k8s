{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
-}


type alias IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool =
    {     }


ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolDecoder : Decoder IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolDecoder =
    decode IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool



ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolEncoder : IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBool -> Encode.Value
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsOrBoolEncoder model =
    Encode.object
        ]

