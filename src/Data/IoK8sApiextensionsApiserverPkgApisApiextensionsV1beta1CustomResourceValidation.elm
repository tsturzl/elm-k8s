{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationEncoder)

import Data.IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaProps exposing (IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaProps, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsDecoder, ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   CustomResourceValidation is a list of validation methods for CustomResources.
-}


type alias IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation =
    { openAPIV3Schema : Maybe IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaProps
    }


ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationDecoder : Decoder IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationDecoder =
    decode IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation
        |> optional "openAPIV3Schema" (Decode.nullable ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsDecoder) Nothing



ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationEncoder : IoK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidation -> Encode.Value
ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1CustomResourceValidationEncoder model =
    Encode.object
        [ ( "openAPIV3Schema", withDefault Encode.null (map ioK8sApiextensionsApiserverPkgApisApiextensionsV1beta1JSONSchemaPropsEncoder model.openAPIV3Schema) )
        ]

