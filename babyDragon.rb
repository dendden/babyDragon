class Dragon
    def initialize name
        @name = name
        @asleep = false
        @stuffInBelly = 10
        @stuffToPoo = 0

        puts name + ' is born. Rarrgh!'
    end

    def feed
        puts @name + ': "Omnomnom!"'
        @stuffInBelly = 10
        timePass
    end

    def walk
        puts @name + ': "Ololo!"'
        @stuffToPoo = 0
        timePass
    end

    def putToBed
        if not @asleep
            @asleep = true
        else
            return @name + ' is already asleep. Tsss!'
        end

        3.times do
            if @asleep
                timePass
            end
            if @asleep
                puts @name + ': "Hrrrr... Pphphphew..."'
            end
        end

        if @asleep
            @asleep = false
            puts @name + ': "Rarghgh! Dadadada!"'
        end
    end

    def toss
        puts @name + ': "Iiiihhha! Hihihaha!"'
        timePass
    end

    def rock
        puts @name + ': "Aaarrhew..."'
        @asleep = true
        timePass
        if @asleep
            @asleep = false
            puts @name + ': "Rarghgh! Dadadada!"'
        end
    end

    private

    def hungry?
        @stuffInBelly <= 2
    end

    def poopy?
        @stuffToPoo >= 8
    end

    def timePass
        if @stuffInBelly > 0
            @stuffInBelly -= 1
            @stuffToPoo += 1
        else
            if @asleep
                @asleep = false
            end
            puts @name + ': "ARRRGH!!! EAT HUMAN FLESH!!! BURN MUTHAFUCKA!!!"'
            exit
        end

        if @stuffToPoo >= 10
            @stuffToPoo = 0
            puts 'Whooops! The firing poo is all around the place!!!'
        end

        if hungry?
            if @asleep
                @asleep = false
                puts @name + ': "Aaaaaaaa!"'
            end
            puts @name + ': "Mnom-mnom?.."'
        end

        if poopy?
            if @asleep
                @asleep = false
            end
            puts @name + ': "Poo-poo-poo!"'
        end
    end

end

babyDragon = Dragon.new 'Rocky'
babyDragon.toss
babyDragon.toss
babyDragon.rock
babyDragon.putToBed
babyDragon.feed
babyDragon.walk
babyDragon.toss
babyDragon.toss
babyDragon.toss
babyDragon.toss
babyDragon.toss
babyDragon.toss
babyDragon.walk
babyDragon.toss
babyDragon.toss
babyDragon.toss
