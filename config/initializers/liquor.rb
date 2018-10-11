module Kms
  module Functions
    module Cse
      include ::Liquor::Library

      function "cart_products", unnamed_arg: :string do |arg, kw|
        cart = UserCart.where(id: arg).first
        cart ? cart.products.to_a : []
      end
    end
  end
end

Kms::FunctionsRegistry.register(Kms::Functions::Cse)
