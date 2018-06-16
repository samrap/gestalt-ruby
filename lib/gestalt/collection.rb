module Gestalt
    class Collection
        def initialize(items)
            @items = items
        end

        def all
            @items
        end

        def get(key, default = nil)
            @items[key] || default
        end
    end
end