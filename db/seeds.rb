container = Task.create!(task_type: 'Container', title: 'Tend Your Indoor Garden')

moisture_level_options = {
    options: [
      { label: 'Dry. The plant needs more water.', value: 'dry'},
      { label: 'Just right.', value: 'perfect'},
      { label: 'The plant shows signs of overwatering.', value: 'overwatered'}
    ]
  }

yes_no_options = {
    options: [
      { label:  'Yes', value: 'yes' },
      { label: 'No', value: 'no'}
    ]
  }

Task.create(
  task_type: 'MultiSelect',
  title: 'Moisture level',
  prompt: 'Does the plant need more water?',
  data: moisture_level_options,
  container_id: container.id
)

Task.create(
  task_type: 'TextInput',
  title: 'pH Level',
  prompt: 'Measure and record the pH level',
  container_id: container.id
)

Task.create(
  task_type: 'TextInput',
  title: 'EC Level',
  prompt: 'Measure and record the EC level',
  container_id: container.id
)

water_task_continer = Task.create(
  task_type: 'container',
  title: 'Water'
)

Task.create(
  task_type: 'MultiSelect',
  title: 'Water Cleanliness',
  prompt: 'Does the water look dirty? Or is anything growing in or on the water?',
  data: yes_no_options,
  container_id: water_task_continer.id
)

Task.create(
  task_type: 'MultiSelect',
  title: 'Water Level',
  prompt: 'Does the water resevoir need to be topped off?',
  data: yes_no_options,
  container_id: water_task_continer.id
)
