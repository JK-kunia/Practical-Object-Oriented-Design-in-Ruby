module SomeFramework
    class Gear
        attr_reader :chainring, :cog, :wheel
        def initialize(chainring, cog, wheel)
            @chainring = chainring
            @cog = cog
            @wheel = wheel
        end
        /....../
        end
    end

# 外部インターフェースをラップして、自身を変更から守る
class GearWrapper
    def self.geaar(args)
        SomeFramework::Gear.new(args[:chainring], arg[:cog], arg[:wheel])
    end
end

# 引数を持つハッシュを渡すことでGearのインスタンスを作成できるようになった
GearWrapper.gear(
        :chainring => 52,
        :cog => 11,
        :wheel => Wheel.new(26, 1.5)
    ).gear_inches