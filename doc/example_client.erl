%%
%% %CopyrightBegin%
%%
%% Copyright Hillside Technology Ltd. 2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

%% Note: this file was _mostly_ generated using soap:wsdl2erlang, but the `header_parser/1` 
%% function was added to illustrate how the client module can be modified to deal with 
%% SOAP headers.

%% generated by soap from: e:/e_soap/soap/doc/example.wsdl
%% for service "contacts_service" and port "contacts_port"
%% using options: [{service,"contacts_service"},{port,"contacts_port"},{generate,both},{namespaces,[{"http://example.com/contacts.xsd",undefined}]},{http_server,soap_server_cowboy_1},{server_name,"example_server"},{http_client,soap_client_ibrowse},{client_name,"example_client"},{strict,true}]

-module(example_client).

-include("example.hrl").

-export([interface/0]).

%% The functions that are described by the WSDL
-export([store/3]).
-export([retrieve/3]).
-export([header_parser/1]).


-spec store(Soap_body::contact(),
  Soap_headers::[soap:soap_header()],
  Options::[any()]) -> soap:soap_response(id()).
store(Soap_body, Soap_headers, Options) ->
  soap_client_util:call(Soap_body, Soap_headers, Options, "\"store\"", interface()).

-spec retrieve(Soap_body::id(),
  Soap_headers::[soap:soap_header()],
  Options::[any()]) -> soap:soap_response(contact()).
retrieve(Soap_body, Soap_headers, Options) ->
  soap_client_util:call(Soap_body, Soap_headers, Options, "\"retrieve\"", interface()).

%% This callback was added to parse SOAP header blocks from the "test" namespace.
%% The selected parser translated the XML to a map.
header_parser("test") ->
  {ok, soap_parsers:map()}.
   
%%% --------------------------------------------------------------------
%%% Internal functions
%%% --------------------------------------------------------------------
interface() ->
    ?INTERFACE.
