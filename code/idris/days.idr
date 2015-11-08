module days

data days = sunday | monday | tuesday | wednesday | thursday | friday | saturday

nextDay: days -> days
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday
nextDay _ = monday

nextWeekday: days -> days
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday _ = monday

