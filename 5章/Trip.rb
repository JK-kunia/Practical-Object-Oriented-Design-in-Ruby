class Trip
    attr_reader :bicycles, :customers, :vehicle

    def initialize(args)
        @bicycles = args[:bicycles]
        @customers = args[:customers]
        @vehicle = args[:vehicle]
    end

    def prepare(preparers)
        preparers.each do |preparer|
        preparer.prepare_trip(self)
        end
    end
end