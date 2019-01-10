def ask_nbtour
    puts "Combien de parties veut tu ? (choisis un numbre > 100"
    print "> "
    n = gets.chomp.to_i
    return n
end

def jeu
    n = ask_nbtour
    part = 0
    result = Array.new

    while part < n
        step = 0
        tour = 0

        while step < 10
            i = rand(1 .. 6)
            puts i

            if i == 5 || i == 6
                step = step + 1
                tour = tour + 1
                puts "Tu avances à la marche numéro #{step}"

            elsif i == 1
                step = step - 1
                tour = tour + 1
                puts "Tu recules à la marche numéro #{step}"

            elsif i == 2 || i == 3 || i == 4
                tour = tour + 1
                puts "Tu restes à la marche numéro #{step}"

            end

        end

        puts "Bravo beau/belle gosse ! Tu as mis #{tour} tours pour parvenir à la 10ème marche."
        result << tour 
        part = part + 1
        somme = 0
        result.each { |a| 
        somme = somme + a }
        return somme

    end

end

def average_finish_time
    somme = jeu
    puts "En moyenne, tu mets #{somme/n} tours pour parvenir à la 10ème marche !"
end

average_finish_time


