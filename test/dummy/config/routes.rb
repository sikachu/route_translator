# frozen_string_literal: true

Rails.application.routes.draw do
  localized do
    get 'dummy',  to: 'dummy#dummy'
    get 'show',   to: 'dummy#show'
    get 'slash',  to: 'dummy#slash'
    get 'space',  to: 'dummy#space'

    get 'optional(/:page)',            to: 'dummy#optional', as: :optional
    get 'prefixed_optional(/p-:page)', to: 'dummy#prefixed_optional', as: :prefixed_optional

    get ':id-suffix', to: 'dummy#suffix'
  end

  get 'partial_caching', to: 'dummy#partial_caching'
  get 'native', to: 'dummy#native'

  root to: 'dummy#dummy'
end
