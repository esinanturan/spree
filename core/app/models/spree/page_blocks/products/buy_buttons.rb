module Spree
  module PageBlocks
    module Products
      class BuyButtons < Spree::PageBlock
        TOP_PADDING_DEFAULT = 20
        BOTTOM_PADDING_DEFAULT = 20

        preference :text_color, :string
      end
    end
  end
end
