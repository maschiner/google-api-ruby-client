# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module SpeechV1
      # Google Cloud Speech API
      #
      # Converts audio to text by applying powerful neural network models.
      #
      # @example
      #    require 'google/apis/speech_v1'
      #
      #    Speech = Google::Apis::SpeechV1 # Alias the module
      #    service = Speech::SpeechService.new
      #
      # @see https://cloud.google.com/speech/
      class SpeechService < Google::Apis::Core::BaseService
        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        def initialize
          super('https://speech.googleapis.com/', '')
        end
        
        # Starts asynchronous cancellation on a long-running operation.  The server
        # makes a best effort to cancel the operation, but success is not
        # guaranteed.  If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
        # Operations.GetOperation or
        # other methods to check whether the cancellation succeeded or whether the
        # operation completed despite cancellation. On successful cancellation,
        # the operation is not deleted; instead, it becomes an operation with
        # an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::SpeechV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/operations/{+name}:cancel', options)
          command.request_representation = Google::Apis::SpeechV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::SpeechV1::Empty::Representation
          command.response_class = Google::Apis::SpeechV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is
        # no longer interested in the operation result. It does not cancel the
        # operation. If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/operations/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::Empty::Representation
          command.response_class = Google::Apis::SpeechV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the
        # server doesn't support this method, it returns `UNIMPLEMENTED`.
        # NOTE: the `name` binding allows API services to override the binding
        # to use different resource name schemes, such as `users/*/operations`. To
        # override the binding, API services can add a binding such as
        # `"/v1/`name=users/*`/operations"` to their service configuration.
        # For backwards compatibility, the default name includes the operations
        # collection id, however overriding users must ensure the name binding
        # is the parent resource, without the operations collection id.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] filter
        #   The standard list filter.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(page_size: nil, filter: nil, name: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/operations', options)
          command.response_representation = Google::Apis::SpeechV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SpeechV1::ListOperationsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/operations/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::Operation::Representation
          command.response_class = Google::Apis::SpeechV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs asynchronous speech recognition: receive results via the
        # google.longrunning.Operations interface. Returns either an
        # `Operation.error` or an `Operation.response` which contains
        # a `LongRunningRecognizeResponse` message.
        # @param [Google::Apis::SpeechV1::LongRunningRecognizeRequest] long_running_recognize_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def longrunningrecognize_speech(long_running_recognize_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/speech:longrunningrecognize', options)
          command.request_representation = Google::Apis::SpeechV1::LongRunningRecognizeRequest::Representation
          command.request_object = long_running_recognize_request_object
          command.response_representation = Google::Apis::SpeechV1::Operation::Representation
          command.response_class = Google::Apis::SpeechV1::Operation
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs synchronous speech recognition: receive results after all audio
        # has been sent and processed.
        # @param [Google::Apis::SpeechV1::RecognizeRequest] recognize_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::RecognizeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::RecognizeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recognize_speech(recognize_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/speech:recognize', options)
          command.request_representation = Google::Apis::SpeechV1::RecognizeRequest::Representation
          command.request_object = recognize_request_object
          command.response_representation = Google::Apis::SpeechV1::RecognizeResponse::Representation
          command.response_class = Google::Apis::SpeechV1::RecognizeResponse
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['key'] = key unless key.nil?
        end
      end
    end
  end
end
