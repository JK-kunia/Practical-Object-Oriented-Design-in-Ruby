class RoadBike < Bicycle
    attr_reader :type_color
  
    def post_initialize(args)
      @type_color = args[:type_color]
    end
  
    def local_spares
      {
        tape_color: type_color
      }
    end
  
    def default_tire_size
      '22'
    end
  end