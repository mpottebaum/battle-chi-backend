# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# -----
# ZONES
# -----

far_north = Zone.create(name: 'Far North Side')
northwest = Zone.create(name: 'Northwest Side')
north = Zone.create(name: 'North Side')
central = Zone.create(name: 'Central Chicago')
west = Zone.create(name: 'West Side')
southwest = Zone.create(name: 'Southwest Side')
south = Zone.create(name: 'South Side')
far_southwest = Zone.create(name: 'Far Southwest Side')
far_southeast = Zone.create(name: 'Far Southeast Side')



# -------------
# NEIGHBORHOODS
# -------------

# FAR NORTH SIDE
forest_glen = Neighborhood.create(name: 'Forest Glen', zone: far_north)
north_park = Neighborhood.create(name: 'North Park', zone: far_north)
albany_park = Neighborhood.create(name: 'Albany Park', zone: far_north)
lincoln_square = Neighborhood.create(name: 'Lincoln Square', zone: far_north)
edgewater = Neighborhood.create(name: 'Edgewater', zone: far_north)
uptown = Neighborhood.create(name: 'Uptown', zone: far_north)


# NORTHWEST SIDE
portage_park = Neighborhood.create(name: 'Portage Park', zone: northwest)
belmont_cragin = Neighborhood.create(name: 'Belmont Cragin', zone: northwest)
irving_park = Neighborhood.create(name: 'Irving Park', zone: northwest)
hermosa = Neighborhood.create(name: 'Hermosa', zone: northwest)


# NORTH SIDE
avondale = Neighborhood.create(name: 'Avondale', zone: north)
logan_square = Neighborhood.create(name: 'Logan Square', zone: north)
north_center = Neighborhood.create(name: 'North Center', zone: north)
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
west_garfield_park = Neighborhood.create(name: 'West Garfield Park', zone: west)
east_garfield_park = Neighborhood.create(name: 'East Garfield Park', zone: west)
near_west_side = Neighborhood.create(name: 'Near West Side', zone: west)
north_lawndale = Neighborhood.create(name: 'North Lawndale', zone: west)
south_lawndale = Neighborhood.create(name: 'South Lawndale', zone: west)
lower_west_side = Neighborhood.create(name: 'Lower West Side', zone: west)


# SOUTHWEST SIDE
archer_heights = Neighborhood.create(name: 'Archer Heights', zone: southwest)
brighton_park = Neighborhood.create(name: 'Brighton Park', zone: southwest)
mckinley_park = Neighborhood.create(name: 'McKinley Park', zone: southwest)
west_elsdon = Neighborhood.create(name: 'West Elsdon', zone: southwest)
gage_park = Neighborhood.create(name: 'Gage Park', zone: southwest)
new_city = Neighborhood.create(name: 'New City', zone: southwest)
west_lawn = Neighborhood.create(name: 'West Lawn', zone: southwest)
chicago_lawn = Neighborhood.create(name: 'Chicago Lawn', zone: southwest)
west_englewood = Neighborhood.create(name: 'West Englewood', zone: southwest)
englewood = Neighborhood.create(name: 'Englewood', zone: southwest)


# SOUTH SIDE
bridgeport = Neighborhood.create(name: 'Bridgeport', zone: south)
armor_square = Neighborhood.create(name: 'Armor Square', zone: south)
douglas = Neighborhood.create(name: 'Douglas', zone: south)
fuller_park = Neighborhood.create(name: 'Fuller Park', zone: south)
grand_boulevard = Neighborhood.create(name: 'Grand Boulevard', zone: south)
oakland = Neighborhood.create(name: 'Oakland', zone: south)
kenwood = Neighborhood.create(name: 'Kenwood', zone: south)
washington_park = Neighborhood.create(name: 'Washington Park', zone: south)
hyde_park = Neighborhood.create(name: 'Hyde Park', zone: south)
woodlawn = Neighborhood.create(name: 'Woodlawn', zone: south)
greater_grand_crossing = Neighborhood.create(name: 'Greater Grand Crossing', zone: south)
south_shore = Neighborhood.create(name: 'South Shore', zone: south)


# FAR SOUTHWEST SIDE
ashburn = Neighborhood.create(name: 'Ashburn', zone: far_southwest)
auburn_gresham = Neighborhood.create(name: 'Auburn Gresham', zone: far_southwest)
beverly = Neighborhood.create(name: 'Beverly', zone: far_southwest)
washington_heights = Neighborhood.create(name: 'Washington Heights', zone: far_southwest)


# FAR SOUTHEAST SIDE
chatham = Neighborhood.create(name: 'Chatham', zone: far_southeast)
avalon_park = Neighborhood.create(name: 'Avalon Park', zone: far_southeast)
south_chicago = Neighborhood.create(name: 'South Chicago', zone: far_southeast)
burnside = Neighborhood.create(name: 'Burnside', zone: far_southeast)
calumet_heights = Neighborhood.create(name: 'Calumet Heights', zone: far_southeast)
roseland = Neighborhood.create(name: 'Roseland', zone: far_southeast)
pullman = Neighborhood.create(name: 'Pullman', zone: far_southeast)



# -------
# BORDERS
# -------


# FAR NORTH SIDE

# Forest Glen
Border.create(neighborhood: forest_glen, adjacent_neighborhood: north_park)
Border.create(neighborhood: forest_glen, adjacent_neighborhood: albany_park)
Border.create(neighborhood: forest_glen, adjacent_neighborhood: irving_park)
Border.create(neighborhood: forest_glen, adjacent_neighborhood: portage_park)

# North Park
Border.create(neighborhood: north_park, adjacent_neighborhood: forest_glen)
Border.create(neighborhood: north_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: north_park, adjacent_neighborhood: lincoln_square)

# Albany Park
Border.create(neighborhood: albany_park, adjacent_neighborhood: forest_glen)
Border.create(neighborhood: albany_park, adjacent_neighborhood: north_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: albany_park, adjacent_neighborhood: irving_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: portage_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: portage_park)
Border.create(neighborhood: albany_park, adjacent_neighborhood: north_center)

# Lincoln Square
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: north_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: albany_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: edgewater)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: uptown)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: north_center)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: irving_park)
Border.create(neighborhood: lincoln_square, adjacent_neighborhood: lakeview)

# Edgewater
Border.create(neighborhood: edgewater, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: edgewater, adjacent_neighborhood: uptown)

# Uptown
Border.create(neighborhood: uptown, adjacent_neighborhood: edgewater)
Border.create(neighborhood: uptown, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: uptown, adjacent_neighborhood: north_center)
Border.create(neighborhood: uptown, adjacent_neighborhood: lakeview)


# NORTHWEST SIDE

# Portage Park
Border.create(neighborhood: portage_park, adjacent_neighborhood: irving_park)
Border.create(neighborhood: portage_park, adjacent_neighborhood: hermosa)
Border.create(neighborhood: portage_park, adjacent_neighborhood: belmont_cragin)

# Irving Park
Border.create(neighborhood: irving_park, adjacent_neighborhood: portage_park)
Border.create(neighborhood: irving_park, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: irving_park, adjacent_neighborhood: hermosa)
Border.create(neighborhood: irving_park, adjacent_neighborhood: avondale)
Border.create(neighborhood: irving_park, adjacent_neighborhood: north_center)
Border.create(neighborhood: irving_park, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: irving_park, adjacent_neighborhood: albany_park)
Border.create(neighborhood: irving_park, adjacent_neighborhood: forest_glen)

# Belmont Cragin
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: portage_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: irving_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: hermosa)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: belmont_cragin, adjacent_neighborhood: austin)

# Hermosa
Border.create(neighborhood: hermosa, adjacent_neighborhood: portage_park)
Border.create(neighborhood: hermosa, adjacent_neighborhood: irving_park)
Border.create(neighborhood: hermosa, adjacent_neighborhood: avondale)
Border.create(neighborhood: hermosa, adjacent_neighborhood: logan_square)
Border.create(neighborhood: hermosa, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: hermosa, adjacent_neighborhood: austin)
Border.create(neighborhood: hermosa, adjacent_neighborhood: belmont_cragin)


# NORTH SIDE

# Avondale
Border.create(neighborhood: avondale, adjacent_neighborhood: irving_park)
Border.create(neighborhood: avondale, adjacent_neighborhood: north_center)
Border.create(neighborhood: avondale, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: avondale, adjacent_neighborhood: logan_square)
Border.create(neighborhood: avondale, adjacent_neighborhood: hermosa)

# North Center
Border.create(neighborhood: north_center, adjacent_neighborhood: avondale)
Border.create(neighborhood: north_center, adjacent_neighborhood: irving_park)
Border.create(neighborhood: north_center, adjacent_neighborhood: albany_park)
Border.create(neighborhood: north_center, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: north_center, adjacent_neighborhood: uptown)
Border.create(neighborhood: north_center, adjacent_neighborhood: lakeview)
Border.create(neighborhood: north_center, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: north_center, adjacent_neighborhood: logan_square)

# Lakeview
Border.create(neighborhood: lakeview, adjacent_neighborhood: uptown)
Border.create(neighborhood: lakeview, adjacent_neighborhood: lincoln_square)
Border.create(neighborhood: lakeview, adjacent_neighborhood: north_center)
Border.create(neighborhood: lakeview, adjacent_neighborhood: lincoln_park)

# Logan Square
Border.create(neighborhood: logan_square, adjacent_neighborhood: avondale)
Border.create(neighborhood: logan_square, adjacent_neighborhood: north_center)
Border.create(neighborhood: logan_square, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: logan_square, adjacent_neighborhood: west_town)
Border.create(neighborhood: logan_square, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: logan_square, adjacent_neighborhood: hermosa)

# Lincoln Park
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: lakeview)
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: north_center)
Border.create(neighborhood: lincoln_park, adjacent_neighborhood: avondale)
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
Border.create(neighborhood: near_south_side, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: near_south_side, adjacent_neighborhood: armor_square)
Border.create(neighborhood: near_south_side, adjacent_neighborhood: douglas)


# WEST SIDE

# Austin
Border.create(neighborhood: austin, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: austin, adjacent_neighborhood: hermosa)
Border.create(neighborhood: austin, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: austin, adjacent_neighborhood: west_garfield_park)
Border.create(neighborhood: austin, adjacent_neighborhood: north_lawndale)

# Humboldt Park
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: austin)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: belmont_cragin)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: hermosa)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: logan_square)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: west_town)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: east_garfield_park)
Border.create(neighborhood: humboldt_park, adjacent_neighborhood: west_garfield_park)

# West Town
Border.create(neighborhood: west_town, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: west_town, adjacent_neighborhood: logan_square)
Border.create(neighborhood: west_town, adjacent_neighborhood: lincoln_park)
Border.create(neighborhood: west_town, adjacent_neighborhood: near_north_side)
Border.create(neighborhood: west_town, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: west_town, adjacent_neighborhood: east_garfield_park)

# West Garfield Park
Border.create(neighborhood: west_garfield_park, adjacent_neighborhood: austin)
Border.create(neighborhood: west_garfield_park, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: west_garfield_park, adjacent_neighborhood: east_garfield_park)
Border.create(neighborhood: west_garfield_park, adjacent_neighborhood: north_lawndale)

# East Garfield Park
Border.create(neighborhood: east_garfield_park, adjacent_neighborhood: west_garfield_park)
Border.create(neighborhood: east_garfield_park, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: east_garfield_park, adjacent_neighborhood: west_town)
Border.create(neighborhood: east_garfield_park, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: east_garfield_park, adjacent_neighborhood: north_lawndale)

# Near West Side
Border.create(neighborhood: near_west_side, adjacent_neighborhood: east_garfield_park)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: humboldt_park)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: west_town)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: near_north_side)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: loop_)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: armor_square)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: south_lawndale)
Border.create(neighborhood: near_west_side, adjacent_neighborhood: north_lawndale)

# North Lawndale
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: austin)
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: west_garfield_park)
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: east_garfield_park)
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: north_lawndale, adjacent_neighborhood: south_lawndale)

# South Lawndale
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: north_lawndale)
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: mckinley_park)
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: south_lawndale, adjacent_neighborhood: archer_heights)

# Lower West Side
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: south_lawndale)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: north_lawndale)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: armor_square)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: mckinley_park)
Border.create(neighborhood: lower_west_side, adjacent_neighborhood: brighton_park)


# SOUTHWEST SIDE

# Archer Heights
Border.create(neighborhood: archer_heights, adjacent_neighborhood: south_lawndale)
Border.create(neighborhood: archer_heights, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: archer_heights, adjacent_neighborhood: gage_park)
Border.create(neighborhood: archer_heights, adjacent_neighborhood: west_elsdon)

# Brighton Park
Border.create(neighborhood: brighton_park, adjacent_neighborhood: archer_heights)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: south_lawndale)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: mckinley_park)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: gage_park)
Border.create(neighborhood: brighton_park, adjacent_neighborhood: west_elsdon)

# McKinley Park
Border.create(neighborhood: mckinley_park, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: mckinley_park, adjacent_neighborhood: south_lawndale)
Border.create(neighborhood: mckinley_park, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: mckinley_park, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: mckinley_park, adjacent_neighborhood: new_city)

# West Elsdon
Border.create(neighborhood: west_elsdon, adjacent_neighborhood: archer_heights)
Border.create(neighborhood: west_elsdon, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: west_elsdon, adjacent_neighborhood: gage_park)
Border.create(neighborhood: west_elsdon, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: west_elsdon, adjacent_neighborhood: west_lawn)

# Gage Park
Border.create(neighborhood: gage_park, adjacent_neighborhood: west_elsdon)
Border.create(neighborhood: gage_park, adjacent_neighborhood: archer_heights)
Border.create(neighborhood: gage_park, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: gage_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: gage_park, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: gage_park, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: gage_park, adjacent_neighborhood: west_lawn)

# New City
Border.create(neighborhood: new_city, adjacent_neighborhood: brighton_park)
Border.create(neighborhood: new_city, adjacent_neighborhood: mckinley_park)
Border.create(neighborhood: new_city, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: new_city, adjacent_neighborhood: armor_square)
Border.create(neighborhood: new_city, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: new_city, adjacent_neighborhood: englewood)
Border.create(neighborhood: new_city, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: new_city, adjacent_neighborhood: gage_park)

# West Lawn
Border.create(neighborhood: west_lawn, adjacent_neighborhood: west_elsdon)
Border.create(neighborhood: west_lawn, adjacent_neighborhood: gage_park)
Border.create(neighborhood: west_lawn, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: west_lawn, adjacent_neighborhood: ashburn)

# Chicago Lawn
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: west_lawn)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: west_elsdon)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: gage_park)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: chicago_lawn, adjacent_neighborhood: ashburn)

# West Englewood
Border.create(neighborhood: west_englewood, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: west_englewood, adjacent_neighborhood: gage_park)
Border.create(neighborhood: west_englewood, adjacent_neighborhood: new_city)
Border.create(neighborhood: west_englewood, adjacent_neighborhood: englewood)
Border.create(neighborhood: west_englewood, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: west_englewood, adjacent_neighborhood: ashburn)

# Englewood
Border.create(neighborhood: englewood, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: englewood, adjacent_neighborhood: new_city)
Border.create(neighborhood: englewood, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: englewood, adjacent_neighborhood: washington_park)
Border.create(neighborhood: englewood, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: englewood, adjacent_neighborhood: auburn_gresham)


# SOUTH SIDE

# Bridgeport
Border.create(neighborhood: bridgeport, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: armor_square)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: new_city)
Border.create(neighborhood: bridgeport, adjacent_neighborhood: mckinley_park)

# Armor Square
Border.create(neighborhood: armor_square, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: armor_square, adjacent_neighborhood: lower_west_side)
Border.create(neighborhood: armor_square, adjacent_neighborhood: near_west_side)
Border.create(neighborhood: armor_square, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: armor_square, adjacent_neighborhood: douglas)
Border.create(neighborhood: armor_square, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: armor_square, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: armor_square, adjacent_neighborhood: new_city)

# Douglas
Border.create(neighborhood: douglas, adjacent_neighborhood: armor_square)
Border.create(neighborhood: douglas, adjacent_neighborhood: near_south_side)
Border.create(neighborhood: douglas, adjacent_neighborhood: oakland)
Border.create(neighborhood: douglas, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: douglas, adjacent_neighborhood: fuller_park)

# Fuller Park
Border.create(neighborhood: fuller_park, adjacent_neighborhood: new_city)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: bridgeport)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: armor_square)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: douglas)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: washington_park)
Border.create(neighborhood: fuller_park, adjacent_neighborhood: englewood)

# Grand Boulevard
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: armor_square)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: douglas)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: oakland)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: kenwood)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: grand_boulevard, adjacent_neighborhood: washington_park)

# Oakland
Border.create(neighborhood: oakland, adjacent_neighborhood: douglas)
Border.create(neighborhood: oakland, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: oakland, adjacent_neighborhood: kenwood)

# Kenwood
Border.create(neighborhood: kenwood, adjacent_neighborhood: oakland)
Border.create(neighborhood: kenwood, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: kenwood, adjacent_neighborhood: washington_park)
Border.create(neighborhood: kenwood, adjacent_neighborhood: hyde_park)

# Washington Park
Border.create(neighborhood: washington_park, adjacent_neighborhood: fuller_park)
Border.create(neighborhood: washington_park, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: washington_park, adjacent_neighborhood: kenwood)
Border.create(neighborhood: washington_park, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: washington_park, adjacent_neighborhood: woodlawn)
Border.create(neighborhood: washington_park, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: washington_park, adjacent_neighborhood: englewood)

# Hyde Park
Border.create(neighborhood: hyde_park, adjacent_neighborhood: kenwood)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: grand_boulevard)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: washington_park)
Border.create(neighborhood: hyde_park, adjacent_neighborhood: woodlawn)

# Woodlawn
Border.create(neighborhood: woodlawn, adjacent_neighborhood: hyde_park)
Border.create(neighborhood: woodlawn, adjacent_neighborhood: washington_park)
Border.create(neighborhood: woodlawn, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: woodlawn, adjacent_neighborhood: south_shore)

# Greater Grand Crossing
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: englewood)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: washington_park)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: woodlawn)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: south_shore)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: chatham)
Border.create(neighborhood: greater_grand_crossing, adjacent_neighborhood: auburn_gresham)

# South Shore
Border.create(neighborhood: south_shore, adjacent_neighborhood: woodlawn)
Border.create(neighborhood: south_shore, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: south_shore, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: south_shore, adjacent_neighborhood: south_chicago)


# FAR SOUTHWEST SIDE

# Ashburn
Border.create(neighborhood: ashburn, adjacent_neighborhood: west_lawn)
Border.create(neighborhood: ashburn, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: ashburn, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: ashburn, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: ashburn, adjacent_neighborhood: beverly)

# Auburn Gresham
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: ashburn)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: chicago_lawn)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: west_englewood)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: englewood)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: chatham)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: roseland)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: auburn_gresham, adjacent_neighborhood: beverly)

# Beverly
Border.create(neighborhood: beverly, adjacent_neighborhood: ashburn)
Border.create(neighborhood: beverly, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: beverly, adjacent_neighborhood: washington_heights)

# Washington Heights
Border.create(neighborhood: washington_heights, adjacent_neighborhood: beverly)
Border.create(neighborhood: washington_heights, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: washington_heights, adjacent_neighborhood: roseland)


# FAR SOUTHEAST SIDE

# Chatham
Border.create(neighborhood: chatham, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: chatham, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: chatham, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: chatham, adjacent_neighborhood: burnside)
Border.create(neighborhood: chatham, adjacent_neighborhood: pullman)
Border.create(neighborhood: chatham, adjacent_neighborhood: roseland)

# Avalon Park
Border.create(neighborhood: avalon_park, adjacent_neighborhood: chatham)
Border.create(neighborhood: avalon_park, adjacent_neighborhood: greater_grand_crossing)
Border.create(neighborhood: avalon_park, adjacent_neighborhood: south_shore)
Border.create(neighborhood: avalon_park, adjacent_neighborhood: south_chicago)
Border.create(neighborhood: avalon_park, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: avalon_park, adjacent_neighborhood: burnside)

# South Chicago
Border.create(neighborhood: south_chicago, adjacent_neighborhood: south_shore)
Border.create(neighborhood: south_chicago, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: south_chicago, adjacent_neighborhood: calumet_heights)

# Burnside
Border.create(neighborhood: burnside, adjacent_neighborhood: chatham)
Border.create(neighborhood: burnside, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: burnside, adjacent_neighborhood: calumet_heights)
Border.create(neighborhood: burnside, adjacent_neighborhood: pullman)
Border.create(neighborhood: burnside, adjacent_neighborhood: roseland)

# Calumet Heights
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: south_chicago)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: avalon_park)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: burnside)
Border.create(neighborhood: calumet_heights, adjacent_neighborhood: pullman)

# Roseland
Border.create(neighborhood: roseland, adjacent_neighborhood: washington_heights)
Border.create(neighborhood: roseland, adjacent_neighborhood: auburn_gresham)
Border.create(neighborhood: roseland, adjacent_neighborhood: chatham)
Border.create(neighborhood: roseland, adjacent_neighborhood: burnside)
Border.create(neighborhood: roseland, adjacent_neighborhood: pullman)

# Pullman
Border.create(neighborhood: pullman, adjacent_neighborhood: roseland)
Border.create(neighborhood: pullman, adjacent_neighborhood: chatham)
Border.create(neighborhood: pullman, adjacent_neighborhood: burnside)
Border.create(neighborhood: pullman, adjacent_neighborhood: calumet_heights)




# -----
# CARDS
# -----

# Card.create(neighborhood: forest_glen, fight_type: 'Gunman')
# Card.create(neighborhood: north_park, fight_type: 'Gunman')
# Card.create(neighborhood: albany_park, fight_type: 'Gunman')
# Card.create(neighborhood: lincoln_square, fight_type: 'Gunman')
# Card.create(neighborhood: edgewater, fight_type: 'Gunman')
# Card.create(neighborhood: uptown, fight_type: 'Gunman')
# Card.create(neighborhood: portage_park, fight_type: 'Gunman')
# Card.create(neighborhood: belmont_cragin, fight_type: 'Gunman')
# Card.create(neighborhood: irving_park, fight_type: 'Gunman')
# Card.create(neighborhood: hermosa, fight_type: 'Gunman')
# Card.create(neighborhood: avondale, fight_type: 'Gunman')
# Card.create(neighborhood: logan_square, fight_type: 'Gunman')
# Card.create(neighborhood: north_center, fight_type: 'Gunman')
# Card.create(neighborhood: lakeview, fight_type: 'Gunman')
# Card.create(neighborhood: lincoln_park, fight_type: 'Gunman')
# Card.create(neighborhood: near_north_side, fight_type: 'Gunman')
# Card.create(neighborhood: loop_, fight_type: 'Gunman')
# Card.create(neighborhood: near_south_side, fight_type: 'Gunman')
# Card.create(neighborhood: austin, fight_type: 'Gunman')
# Card.create(neighborhood: humboldt_park, fight_type: 'Gunman')
# Card.create(neighborhood: west_town, fight_type: 'Gunman')
# Card.create(neighborhood: west_garfield_park, fight_type: 'Gunman')
# Card.create(neighborhood: east_garfield_park, fight_type: 'Gunman')
# Card.create(neighborhood: near_west_side, fight_type: 'Gunman')
# Card.create(neighborhood: north_lawndale, fight_type: 'Gunman')
# Card.create(neighborhood: south_lawndale, fight_type: 'Gunman')
# Card.create(neighborhood: lower_west_side, fight_type: 'Gunman')
# Card.create(neighborhood: archer_heights, fight_type: 'Gunman')
# Card.create(neighborhood: brighton_park, fight_type: 'Gunman')
# Card.create(neighborhood: mckinley_park, fight_type: 'Gunman')
# Card.create(neighborhood: west_elsdon, fight_type: 'Gunman')
# Card.create(neighborhood: gage_park, fight_type: 'Gunman')
# Card.create(neighborhood: new_city, fight_type: 'Gunman')
# Card.create(neighborhood: west_lawn, fight_type: 'Gunman')
# Card.create(neighborhood: chicago_lawn, fight_type: 'Gunman')
# Card.create(neighborhood: west_englewood, fight_type: 'Gunman')
# Card.create(neighborhood: englewood, fight_type: 'Gunman')
# Card.create(neighborhood: bridgeport, fight_type: 'Gunman')
# Card.create(neighborhood: armor_square, fight_type: 'Gunman')
# Card.create(neighborhood: douglas, fight_type: 'Gunman')
# Card.create(neighborhood: fuller_park, fight_type: 'Gunman')
# Card.create(neighborhood: grand_boulevard, fight_type: 'Gunman')
# Card.create(neighborhood: oakland, fight_type: 'Gunman')
# Card.create(neighborhood: kenwood, fight_type: 'Gunman')
# Card.create(neighborhood: washington_park, fight_type: 'Gunman')
# Card.create(neighborhood: hyde_park, fight_type: 'Gunman')
# Card.create(neighborhood: woodlawn, fight_type: 'Gunman')
# Card.create(neighborhood: greater_grand_crossing, fight_type: 'Gunman')
# Card.create(neighborhood: south_shore, fight_type: 'Gunman')
# Card.create(neighborhood: ashburn, fight_type: 'Gunman')
# Card.create(neighborhood: auburn_gresham, fight_type: 'Gunman')
# Card.create(neighborhood: beverly, fight_type: 'Gunman')
# Card.create(neighborhood: washington_heights, fight_type: 'Gunman')
# Card.create(neighborhood: chatham, fight_type: 'Gunman')
# Card.create(neighborhood: avalon_park, fight_type: 'Gunman')
# Card.create(neighborhood: south_chicago, fight_type: 'Gunman')
# Card.create(neighborhood: burnside, fight_type: 'Gunman')
# Card.create(neighborhood: calumet_heights, fight_type: 'Gunman')
# Card.create(neighborhood: roseland, fight_type: 'Gunman')
# Card.create(neighborhood: pullman, fight_type: 'Gunman')