function character_selection(){
    while true
    do    
        echo "Yun" 
        echo "Gouki" 
        echo "Remy" 
        echo "Ryu"
        echo "Urien"
        echo "Q"
        echo "Oro"
        echo "Necro"
        echo "Chun-Li"
        echo "Dudley"
        echo "Ibuki"
        echo "Makoto"
        echo "Elena"
        echo "Sean"
        echo "Twelve"
        echo "Hugo"
        echo "Alex"
        echo "Yang"
        echo "Ken"
        echo "Gill"

    read -p "Enter your choice: " character_choice
    echo ""

    case $character_choice in
        "Yun") break ;;
        "Gouki") break ;;
        "Remy") break ;;
        "Ryu") break ;;
        "Urien") break ;;
        "Q") break ;;
        "Oro") break ;;
        "Necro") break ;;
        "Chun-Li") break ;;
        "Dudley") break ;;
        "Ibuki") break ;;
        "Makoto") break ;;
        "Elena") break ;;
        "Sean") break ;;
        "Twelve") break ;;
        "Hugo") break ;;
        "Alex") break ;;
        "Yang") break ;;
        "Ken") break ;;
        "Gill") break ;;
        *) echo -e "That is not a valid choice.\n"
    esac
    done
}

function super_parse(){
    while true
    do
        IFS=','
        read -ra super_array <<< "$supers"
        for val in ${super_array[@]}
        do
            echo "$val"
        done
        read -p "Choose your super art: " super_choice
        echo ""
        case $super_choice in
        1) super_name=${super_array[0]}
            final_choices
            break
            ;;
        2) super_name=${super_array[1]}
            final_choices
            break
            ;;
        3) super_name=${super_array[2]}
            final_choices
            break
            ;;
        *) echo -e "That is not a valid option.\n"
            ;;
        esac
    done
}

function super_selection(){
    case $character_choice in
        "Yun")  supers="I Youhou,II Sourai Rengeki,III Genei Jin"
                super_parse 
                ;;
        "Gouki") supers="I Messatsu Gou Hadou,II Messatsu Gou Shouryuu,III Messatsu Gou Rasen"
                super_parse
                ;;      
        "Remy") supers="I Hunnu no Supernova,II Vierge ni Ansoku O,III Shoushin no Nocturne"
                super_parse
                ;;
        "Ryu") supers="I Shinkuu Hadou Ken,II Shin Shouryuu Ken,III Denjin Hadou Ken"
                super_parse
                ;;
        "Urien") supers="I Tyrant Punish,II Jupiter Thunder,III Aegis Reflector"
                super_parse
                ;;
        "Q") supers="I Tosshin Oyobi Chishi Renzoku Dageki (Kari),II Fukubu Oyobi Koutoubu e no Tsuuda (Kari),III Bakuhatsu o Tomonau Dageki ya Hokaku (Kari)"
                super_parse
                ;;
        "Oro") supers="I Kishin Riki,II Yagyou Dama,III Tengu Ishi"
                super_parse
                ;;
        "Necro") supers="I Chou Denji Storm,II Slam Dance,III Electric Snake"
                super_parse
                ;;
        "Chun-Li") supers="I Kikou Shou,II Houyoku Sen,III Tensei Ranka"
                super_parse
                ;;
        "Dudley") supers="I Rocket Upper,II Rolling Thunder,III Corkscrew Blow"
                super_parse
                ;;
        "Ibuki") supers="I Kasumi Suzaku,II Yoroi Dooshi,III Yami Shigure"
                super_parse
                ;;
        "Makoto") supers="I Seichuusen Godan-zuki,II Abare Tosanami Kudaki,III Tanden Renki: Seme no Kata"
                super_parse
                ;;
        "Elena") supers="I Spinning Beat,II Brave Dance,III Healing"
                super_parse
                ;;
        "Sean") supers="I Hadou Burst,II Shouryuu Cannon,III Hyper Tornado"
                super_parse
                ;;
        "Twelve") supers="I X.N.D.L,II X.F.L.A.T,III X.C.O.P.Y"
                super_parse
                ;;
        "Hugo") supers="I Gigas Breaker,II Megaton Press,III Hammer Mountain"
                super_parse
                ;;
        "Alex") supers="I Hyper Bomb,II Boomerang Raid,III Stun Gun Headbutt"
                super_parse
                ;;
        "Yang") supers="I Raishin Mahha Ken,II Tenshin Senkyuutai,III Sei'ei Enbu"
                super_parse
                ;;
        "Ken") supers="I Shouryuu Reppa,II Shinryuu Ken,III Shippuujinrai Kyaku"
                super_parse
                ;;
        "Gill") echo "Your character is $character_choice and your super arts are I Meteor Strike, II Seraphic Wing, and III Ressurection." ;;
    esac
}

function final_choices(){
    echo "Your character is $character_choice and your super art is $super_name."
    if [ $character_choice = "Gouki" ]
    then
        echo -e "You also have access to the super arts Tenma Gou Zankuu, Shun Goku Satsu, and Kongou Kokuretsu Zan."
    fi
    if [ $character_choice = "Oro" ]
    then
        if [ $super_name = "I Kishin Riki" ]
        then
            echo -e "You also have access to the super arts Kishin Kuuchuu Jigoku Guruma and Kishin Tsui."
        elif [ $super_name = "II Yagyou Dama" ]
        then
            echo -e "You also have access to the super art Yagyou Oodama."
        elif [ $super_name = "III Tengi Ishi" ]
        then
            echo -e "You also have access to the super art Tengu Midare Ishi."
        fi
    fi
}

character_selection
super_selection $character_choice