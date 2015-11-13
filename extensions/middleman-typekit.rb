require "middleman-core"

class Typekit < Middleman::Extension

  option :kit_id, false, "Your Typekit kit's ID"

  def initialize(app, options_hash={}, &block)
    super
    app.set :typekit_kit_id, options.kit_id
  end

  helpers do
    def typekit
      if typekit_kit_id
          %Q{
            <script type="text/javascript" src="//use.typekit.net/#{typekit_kit_id}.js"></script>
            <script type="text/javascript">try{Typekit.load({ async: true });}catch(e){}</script>
          }
      end
    end
  end

end

::Middleman::Extensions.register(:typekit, Typekit)
