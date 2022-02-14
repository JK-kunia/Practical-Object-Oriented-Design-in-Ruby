class Bicycle
    attr_reader :size, :chain, :tire_size
  
    def initialize(args = {})
      @size = args[:size]
      @chain = args[:chain] || default_chain
      @tire_size = args[:tire_size] || default_tire_size
  
      post_initialize(args)
    end
  
    def post_initialize(_args)
      nil
    end
  
    def default_chain
      '10-speed'
    end
  
    def default_tire_size
      raise NotImplementedError, "this #{self.class} cannot respond to:"
    end
  
    def spares
      {
        chain: chain,
        tire_size: tire_size
      }
        .merge(local_spares)
    end
  
    def local_spares
      {}
    end
end