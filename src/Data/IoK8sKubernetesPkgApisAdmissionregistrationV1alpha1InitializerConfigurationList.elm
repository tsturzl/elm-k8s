{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList exposing (IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList, ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListDecoder, ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList =
    {     }


ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListDecoder : Decoder IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList
ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListDecoder =
    decode IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList



ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListEncoder : IoK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationList -> Encode.Value
ioK8sKubernetesPkgApisAdmissionregistrationV1alpha1InitializerConfigurationListEncoder model =
    Encode.object
        ]


