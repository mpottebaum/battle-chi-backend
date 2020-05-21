# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Player.destroy_all
Militium.destroy_all
PlaceMilitium.destroy_all
Battle.destroy_all
BattleFront.destroy_all
PlayerCard.destroy_all

Zone.destroy_all
Neighborhood.destroy_all
Border.destroy_all
Card.destroy_all

# -----
# ZONES
# -----

far_north = Zone.create(name: 'Far North Side', num_militia: 3)
northwest = Zone.create(name: 'Northwest Side', num_militia: 2)
north = Zone.create(name: 'North Side', num_militia: 4)
central = Zone.create(name: 'Central Chicago', num_militia: 4)
west = Zone.create(name: 'West Side', num_militia: 6)
southwest = Zone.create(name: 'Southwest Side', num_militia: 5)
south = Zone.create(name: 'South Side', num_militia: 6)
far_southwest = Zone.create(name: 'Far Southwest Side', num_militia: 4)
far_southeast = Zone.create(name: 'Far Southeast Side', num_militia: 3)



# -------------
# NEIGHBORHOODS
# -------------

# FAR NORTH SIDE
jefferson_park = Neighborhood.create(name: 'Jefferson Park', zone: far_north)
albany_park = Neighborhood.create(name: 'Albany Park', zone: far_north)
rogers_park = Neighborhood.create(name: "Roger's Park", zone: far_north)
lincoln_square = Neighborhood.create(name: 'Lincoln Square', zone: far_north)
edgewater = Neighborhood.create(name: 'Edgewater', zone: far_north)
uptown = Neighborhood.create(name: 'Uptown', zone: far_north)


# NORTHWEST SIDE
portage_park = Neighborhood.create(name: 'Portage Park', zone: northwest)
belmont_cragin = Neighborhood.create(name: 'Belmont Cragin', zone: northwest)
irving_park = Neighborhood.create(name: 'Irving Park', zone: northwest)


# NORTH SIDE
logan_square = Neighborhood.create(name: 'Logan Square', zone: north)
lakeview = Neighborhood.create(name: 'Lakeview', zone: north)
lincoln_park = Neighborhood.create(name: 'Lincoln Park', zone: north)


# CENTRAL CHICAGO
near_north_side = Neighborhood.create(name: 'Near North Side', zone: central)
loop_ = Neighborhood.create(name: 'Loop', zone: central)
near_south_side = Neighborhood.create(name: 'Near South Side', zone: central)


# WEST SIDE
austin = Neighborhood.create(name: 'Austin', zone: west)
humboldt_park = Neighborhood.create(name: 'Humboldt Park', zone: west)
west_town = Neighborhood.create(name: 'West Town', zone: west)
garfield_park = Neighborhood.create(name: 'Garfield Park', zone: west)
near_west_side = Neighborhood.create(name: 'Near West Side', zone: west)
lawndale = Neighborhood.create(name: 'Lawndale', zone: west)


# SOUTHWEST SIDE
brighton_park = Neighborhood.create(name: 'Brighton Park', zone: southwest)
gage_park = Neighborhood.create(name: 'Gage Park', zone: southwest)
new_city = Neighborhood.create(name: 'New City', zone: southwest)
chicago_lawn = Neighborhood.create(name: 'Chicago Lawn', zone: southwest)
englewood = Neighborhood.create(name: 'Englewood', zone: southwest)


# SOUTH SIDE
bridgeport = Neighborhood.create(name: 'Bridgeport', zone: south)
bronzeville = Neighborhood.create(name: 'Bronzeville', zone: south)
hyde_park = Neighborhood.create(name: 'Hyde Park', zone: south)
greater_grand_crossing = Neighborhood.create(name: 'Greater Grand Crossing', zone: south)
south_shore = Neighborhood.create(name: 'South Shore', zone: south)


# FAR SOUTHWEST SIDE
ashburn = Neighborhood.create(name: 'Ashburn', zone: far_southwest)
auburn_gresham = Neighborhood.create(name: 'Auburn Gresham', zone: far_southwest)
beverly = Neighborhood.create(name: 'Beverly', zone: far_southwest)
washington_heights = Neighborhood.create(name: 'Washington Heights', zone: far_southwest)
morgan_park = Neighborhood.create(name: 'Morgan Park', zone: far_southwest)


# FAR SOUTHEAST SIDE
chatham = Neighborhood.create(name: 'Chatham', zone: far_southeast)
south_chicago = Neighborhood.create(name: 'South Chicago', zone: far_southeast)
calumet_heights = Neighborhood.create(name: 'Calumet Heights', zone: far_southeast)
pullman = Neighborhood.create(name: 'Pullman', zone: far_southeast)
south_deering = Neighborhood.create(name: 'South Deering', zone: far_southeast)
hegewisch = Neighborhood.create(name: 'Hegewisch', zone: far_southeast)


# -------
# BORDERS
# -------


# FAR NORTH SIDE

# Jefferson Park
Border.create(neighborhood: jefferson_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: jefferson_park, adjacent_neighborhood: irving_park)
Border.create(neighborhood: jefferson_park, adjacent_neighborhood: portage_park)

# Albany Park
Border.create(neighborhood: albany_park, adjacent_neighborhood: jefferson_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: rogers_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: albany_park, adjacent_neighborhood: irving_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: portage_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: lakeview)

# Roger's Park
Border.create(neighborhood: rogers_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: rogers_park, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: rogers_park, adjacent_neighborhood: edgewater)

# Lincoln Square
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: albany_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: edgewater)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: uptown)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: rogers_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: irving_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: lakeview)

# Edgewater
Border.create(neighborhood: edgewater, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: edgewater, adjacent_neighborhood: uptown)
Border.create(neighborhood: edgewater, adjacent_neighborhood: rogers_park)

# Uptown
Border.create(neighborhood: uptown, adjacent_neighborhood: edgewater)
Border.create(neighborhood: uptown, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: uptown, adjacent_neighborhood: lakeview)


# NORTHWEST SIDE

# Portage Park
Border.create(neighborhood: portage_park, adjacent_neighborhood: irving_park)
Border.create(neighborhood: portage_park, adjacent_neighborhood: jefferson_park)
Border.create(neighborhood: portage_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: portage_park, adjacent_neighborhood: belmont_cragin)

# Irving Park
Border.create(neighborhood: irving_park, adjacent_neighborhood: portage_park)
Border.create(neighborhood: irving_park, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: irving_park, adjacent_neighborhood: jefferson_park)
Border.create(neighborhood: irving_park, adjacent_neighborhood: logan_square)
Border.create(neighborhood: irving_park, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: irving_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: irving_park, adjacent_neighborhood: lakeview)

# Belmont Cragin
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: portage_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: irving_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: logan_square)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: austin)



# NORTH SIDE

# Lakeview
Border.create(neighborhood: lakeview, adjacent_neighborhood: uptown)
Border.create(neighborhood: lakeview, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: lakeview, adjacent_neighborhood: albany_park)
Border.create(neighborhood: lakeview, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: lakeview, adjacent_neighborhood: irving_park)
Border.create(neighborhood: lakeview, adjacent_neighborhood: logan_square)

# Logan Square
Border.create(neighborhood: logan_square, adjacent_neighborhood: irving_park)
Border.create(neighborhood: logan_square, adjacent_neighborhood: lakeview)
Border.create(neighborhood: logan_square, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: logan_square, adjacent_neighborhood: west_town)
Border.create(neighborhood: logan_square, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: logan_square, adjacent_neighborhood: belmont_cragin)

# Lincoln Park
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: lakeview)
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: logan_square)
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: west_town)
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: near_north_side)


# CENTRAL CHICAGO

# Near North Side
Border.create(neighborhood: near_north_side, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: near_north_side, adjacent_neighborhood: west_town)
Border.create(neighborhood: near_north_side, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: near_north_side, adjacent_neighborhood: loop_)

# Loop
Border.create(neighborhood: loop_, adjacent_neighborhood: near_north_side)
Border.create(neighborhood: loop_, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: loop_, adjacent_neighborhood: near_south_side)

# Near South Side
Border.create(neighborhood: near_south_side, adjacent_neighborhood: loop_)
Border.create(neighborhood: near_south_side, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: near_south_side, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: near_south_side, adjacent_neighborhood: bronzeville)


# WEST SIDE

# Austin
Border.create(neighborhood: austin, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: austin, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: austin, adjacent_neighborhood: garfield_park)
Border.create(neighborhood: austin, adjacent_neighborhood: lawndale)

# Humboldt Park
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: austin)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: logan_square)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: west_town)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: garfield_park)

# West Town
Border.create(neighborhood: west_town, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: west_town, adjacent_neighborhood: logan_square)
Border.create(neighborhood: west_town, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: west_town, adjacent_neighborhood: near_north_side)
Border.create(neighborhood: west_town, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: west_town, adjacent_neighborhood: garfield_park)

# Garfield Park
Border.create(neighborhood: garfield_park, adjacent_neighborhood: austin)
Border.create(neighborhood: garfield_park, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: garfield_park, adjacent_neighborhood: west_town)
Border.create(neighborhood: garfield_park, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: garfield_park, adjacent_neighborhood: lawndale)

# Near West Side
Border.create(neighborhood: near_west_side, adjacent_neighborhood: garfield_park)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: west_town)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: near_north_side)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: loop_)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: new_city)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: lawndale)

# Lawndale
Border.create(neighborhood: lawndale, adjacent_neighborhood: austin)
Border.create(neighborhood: lawndale, adjacent_neighborhood: garfield_park)
Border.create(neighborhood: lawndale, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: lawndale, adjacent_neighborhood: new_city)
Border.create(neighborhood: lawndale, adjacent_neighborhood: brighton_park)


# SOUTHWEST SIDE

# Brighton Park
Border.create(neighborhood: brighton_park, adjacent_neighborhood: lawndale)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: gage_park)

# Gage Park
Border.create(neighborhood: gage_park, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: gage_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: gage_park, adjacent_neighborhood: englewood)
Border.create(neighborhood: gage_park, adjacent_neighborhood: chicago_lawn)

# New City
Border.create(neighborhood: new_city, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: new_city, adjacent_neighborhood: lawndale)
Border.create(neighborhood: new_city, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: new_city, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: new_city, adjacent_neighborhood: bronzeville)
Border.create(neighborhood: new_city, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: new_city, adjacent_neighborhood: englewood)
Border.create(neighborhood: new_city, adjacent_neighborhood: gage_park)

# Chicago Lawn
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: gage_park)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: englewood)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: ashburn)

# Englewood
Border.create(neighborhood: englewood, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: englewood, adjacent_neighborhood: gage_park)
Border.create(neighborhood: englewood, adjacent_neighborhood: new_city)
Border.create(neighborhood: englewood, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: englewood, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: englewood, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: englewood, adjacent_neighborhood: ashburn)


# SOUTH SIDE

# Bridgeport
Border.create(neighborhood: bridgeport, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: bronzeville)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: new_city)

# Bronzeville
Border.create(neighborhood: bronzeville, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: bronzeville, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: bronzeville, adjacent_neighborhood: new_city)
Border.create(neighborhood: bronzeville, adjacent_neighborhood: hyde_park)

# Hyde Park
Border.create(neighborhood: hyde_park, adjacent_neighborhood: bronzeville)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: englewood)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: south_shore)

# Greater Grand Crossing
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: englewood)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: south_shore)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: chatham)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: auburn_gresham)

# South Shore
Border.create(neighborhood: south_shore, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: south_shore, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: south_shore, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: south_shore, adjacent_neighborhood: south_chicago)


# FAR SOUTHWEST SIDE

# Ashburn
Border.create(neighborhood: ashburn, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: ashburn, adjacent_neighborhood: englewood)
Border.create(neighborhood: ashburn, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: ashburn, adjacent_neighborhood: beverly)

# Auburn Gresham
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: ashburn)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: englewood)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: chatham)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: pullman)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: beverly)

# Beverly
Border.create(neighborhood: beverly, adjacent_neighborhood: ashburn)
Border.create(neighborhood: beverly, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: beverly, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: beverly, adjacent_neighborhood: morgan_park)

# Washington Heights
Border.create(neighborhood: washington_heights, adjacent_neighborhood: beverly)
Border.create(neighborhood: washington_heights, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: washington_heights, adjacent_neighborhood: pullman)
Border.create(neighborhood: washington_heights, adjacent_neighborhood: morgan_park)

# Morgan Park
Border.create(neighborhood: morgan_park, adjacent_neighborhood: beverly)
Border.create(neighborhood: morgan_park, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: morgan_park, adjacent_neighborhood: pullman)


# FAR SOUTHEAST SIDE

# Chatham
Border.create(neighborhood: chatham, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: chatham, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: chatham, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: chatham, adjacent_neighborhood: pullman)

# South Chicago
Border.create(neighborhood: south_chicago, adjacent_neighborhood: south_shore)
Border.create(neighborhood: south_chicago, adjacent_neighborhood: south_deering)
Border.create(neighborhood: south_chicago, adjacent_neighborhood: calumet_heights)

# Calumet Heights
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: south_chicago)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: south_deering)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: pullman)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: chatham)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: south_shore)

# Pullman
Border.create(neighborhood: pullman, adjacent_neighborhood: morgan_park)
Border.create(neighborhood: pullman, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: pullman, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: pullman, adjacent_neighborhood: chatham)
Border.create(neighborhood: pullman, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: pullman, adjacent_neighborhood: south_deering)
Border.create(neighborhood: pullman, adjacent_neighborhood: hegewisch)

# South Deering
Border.create(neighborhood: south_deering, adjacent_neighborhood: hegewisch)
Border.create(neighborhood: south_deering, adjacent_neighborhood: pullman)
Border.create(neighborhood: south_deering, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: south_deering, adjacent_neighborhood: south_chicago)

# Hegewisch
Border.create(neighborhood: hegewisch, adjacent_neighborhood: pullman)
Border.create(neighborhood: hegewisch, adjacent_neighborhood: south_deering)




# -----
# CARDS
# -----

Card.create(neighborhood: rogers_park, fighter_type: 1)
Card.create(neighborhood: jefferson_park, fighter_type: 2)
Card.create(neighborhood: albany_park, fighter_type: 3)
Card.create(neighborhood: lincoln_square, fighter_type: 1)
Card.create(neighborhood: edgewater, fighter_type: 2)
Card.create(neighborhood: uptown, fighter_type: 3)

Card.create(neighborhood: portage_park, fighter_type: 3)
Card.create(neighborhood: belmont_cragin, fighter_type: 1)
Card.create(neighborhood: irving_park, fighter_type: 2)

Card.create(neighborhood: logan_square, fighter_type: 2)
Card.create(neighborhood: lakeview, fighter_type: 1)
Card.create(neighborhood: lincoln_park, fighter_type: 3)

Card.create(neighborhood: near_north_side, fighter_type: 3)
Card.create(neighborhood: loop_, fighter_type: 1)
Card.create(neighborhood: near_south_side, fighter_type: 2)

Card.create(neighborhood: austin, fighter_type: 3)
Card.create(neighborhood: humboldt_park, fighter_type: 1)
Card.create(neighborhood: west_town, fighter_type: 2)
Card.create(neighborhood: garfield_park, fighter_type: 1)
Card.create(neighborhood: near_west_side, fighter_type: 2)
Card.create(neighborhood: lawndale, fighter_type: 3)

Card.create(neighborhood: brighton_park, fighter_type: 1)
Card.create(neighborhood: gage_park, fighter_type: 3)
Card.create(neighborhood: new_city, fighter_type: 2)
Card.create(neighborhood: chicago_lawn, fighter_type: 1)
Card.create(neighborhood: englewood, fighter_type: 2)

Card.create(neighborhood: bridgeport, fighter_type: 1)
Card.create(neighborhood: bronzeville, fighter_type: 2)
Card.create(neighborhood: hyde_park, fighter_type: 3)
Card.create(neighborhood: greater_grand_crossing, fighter_type: 3)
Card.create(neighborhood: south_shore, fighter_type: 1)

Card.create(neighborhood: ashburn, fighter_type: 1)
Card.create(neighborhood: auburn_gresham, fighter_type: 2)
Card.create(neighborhood: beverly, fighter_type: 3)
Card.create(neighborhood: washington_heights, fighter_type: 2)
Card.create(neighborhood: morgan_park, fighter_type: 3)

Card.create(neighborhood: chatham, fighter_type: 2)
Card.create(neighborhood: south_chicago, fighter_type: 1)
Card.create(neighborhood: calumet_heights, fighter_type: 3)
Card.create(neighborhood: pullman, fighter_type: 1)
Card.create(neighborhood: south_deering, fighter_type: 2)
Card.create(neighborhood: hegewisch, fighter_type: 3)

# Wild cards
Card.create(fighter_type: 0)
Card.create(fighter_type: 0)