{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes exposing (IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes, ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesDecoder, ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes =
    {     }


ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesDecoder : Decoder IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes
ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesDecoder =
    decode IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes



ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesEncoder : IoK8sKubernetesPkgApisAuthorizationV1ResourceAttributes -> Encode.Value
ioK8sKubernetesPkgApisAuthorizationV1ResourceAttributesEncoder model =
    Encode.object
        ]


