{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer exposing (IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer, ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerDecoder, ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer =
    {     }


ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerDecoder : Decoder IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer
ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerDecoder =
    decode IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer



ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerEncoder : IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1Initializer -> Encode.Value
ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerEncoder model =
    Encode.object
        ]


