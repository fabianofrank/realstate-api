# frozen_string_literal: true

cities = ['Rio de Janeiro', 'Palhoça', 'Montes Claros', 'Belo Horizonte', 'Florianópolis']
addresses = ['Rua Iluminato Borges Rios, 369', 'Rua Francisco de Assis, 1258', 'Av. Mangabeiras, 789',
             'Rua Major Prates, 964', 'Rua Santa Catarina , 6500']
beds = [1, 2, 3, 3, 4]
baths = [1, 2, 2, 3, 4]
sizes = [60.5, 47.8, 185.9, 270.0, 114.7]
prices = [4790.8, 6000.5, 2500.0, 3114.7, 1850.9]
parkings = [1, 2, 3, 3, 4]
description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."

50.times do |number|
  @property = Property.new(
    name: 'House',
    city: cities[(number % 5)],
    address: addresses[(number % 5)],
    bed: beds[(number % 5)],
    bath: baths[(number % 5)],
    size: sizes[(number % 5)],
    price: prices[(number % 5)],
    parking: parkings[(number % 5)],
    description:
  )

  @property.save
end
