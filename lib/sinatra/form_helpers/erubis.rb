module Sinatra
  module FormHelpers
    class ErubisTemplate < Tilt::ErubisTemplate
      def prepare
        options[:engine_class] = ErubisEruby
        super
      end
    end

    class ErubisEruby < Erubis::Eruby
      # Lifted from Rails 3.  See: http://timelessrepo.com/block-helpers-in-rails3
      BLOCK_EXPR = /\s+(do|\{)(\s*\|[^|]*\|)?\s*\Z/

      def add_expr_literal(src, code)
        if code =~ BLOCK_EXPR
          src << "#{@bufvar} << " << code
        else
          src << "#{@bufvar} << (" << code << ');'
        end
      end
    end
  end
end
