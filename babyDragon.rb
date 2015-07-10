class Dragon
    def initialize name
        @name = name
        @asleep = false
        @stuffInBelly = 10
        @stuffToPoo = 0

        puts name + ' is born. Rarrgh!'
    end

    def feed
        if @stuffInBelly < 10
            puts @name + ': "Omnomnom!"'
            @stuffInBelly = 10
            timePass
        else
            puts @name + ': "Neeee!"'
        end
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

puts 'What name would you choose for you baby dragon?'
name = gets.chomp
dragon = Dragon.new name

puts 'Well congratulations! Now you have a baby dragon called ' + name + '!'
puts 'Please choose what you would like to do with your little dragon:'
puts 'Enter "feed", "walk", "put to bed", "toss" or "rock".'
puts 'Enter "q" to quit the program'
action = gets.chomp

while action != 'q'
    while ( action != 'feed' && action != 'walk' && action != 'put to bed' && action != 'toss' && action != 'rock' )
        puts 'Enter "feed", "walk", "put to bed", "toss" or "rock".'
        puts 'Enter "q" to quit the program'
        action = gets.chomp
    end

    if action != 'q'
        if action == 'feed'
            dragon.feed
        elsif action == 'walk'
            dragon.walk
        elsif action == 'put to bed'
            dragon.putToBed
        elsif action == 'toss'
            dragon.toss
        else
            dragon.rock
        end
    end

    action = gets.chomp
end
