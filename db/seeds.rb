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
images = [
[
  'app/assets/images/1(1).jpg',
  'app/assets/images/1(2).jpg',
  'app/assets/images/1(3).jpg',
  'app/assets/images/1(4).jpg',
  'app/assets/images/1(5).jpg',
],
[
  'app/assets/images/2(1).jpg',
  'app/assets/images/2(2).jpg',
  'app/assets/images/2(3).jpg',
  'app/assets/images/2(4).jpg',
  'app/assets/images/2(5).jpg',
],
[
  'app/assets/images/3(1).jpg',
  'app/assets/images/3(2).jpg',
  'app/assets/images/3(3).jpg',
  'app/assets/images/3(4).jpg',
  'app/assets/images/3(5).jpg',
],
[
  'app/assets/images/4(1).jpg',
  'app/assets/images/4(2).jpg',
  'app/assets/images/4(3).jpg',
  'app/assets/images/4(4).jpg',
  'app/assets/images/4(5).jpg',
],
[
  'app/assets/images/5(1).jpg',
  'app/assets/images/5(2).jpg',
  'app/assets/images/5(3).jpg',
  'app/assets/images/5(4).jpg',
  'app/assets/images/5(5).jpg'
],
]


49.times do |number|

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

    attachable = []
    images.each do |image|
      attachable.push({ io: File.open(image[number % 5]), filename: "photo#{number + 1}.jpg" })
    end

  @property.images.attach(attachable)
  @property.save
end
