class BedTime < ActiveHash::Base
  include ActiveHash::Associations
  has_many :checks

  self.data = [
    {id: 1, name: '選択してください'},
    {id: 2, name: '21:00~21:30'},
    {id: 3, name: '21:30~22:00'},
    {id: 4, name: '22:00~22:30'},
    {id: 5, name: '22:30~23:00'},
    {id: 6, name: '23:00~23:30'},
    {id: 7, name: '23:30~0:00'},
    {id: 8, name: '0:00~0:30'},
    {id: 9, name: '0:30~1:00'},
    {id: 10, name: '1:00~1:30'},
    {id: 11, name: '1:30~2:00'},
    {id: 12, name: '2:00以降〜'}
  ]
end
