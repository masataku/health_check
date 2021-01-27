class Temperature < ActiveHash::Base
  include ActiveHash::Associations
  has_many :checks

  self.data = [
    {id: 1, name: '選択してください'},
    {id: 2, name: '36.0度以下'},
    {id: 3, name: '36.1度'},
    {id: 4, name: '36.2度'},
    {id: 5, name: '36.3度'},
    {id: 6, name: '36.4度'},
    {id: 7, name: '36.5度'},
    {id: 8, name: '36.6度'},
    {id: 9, name: '36.7度'},
    {id: 10, name: '36.8度'},
    {id: 11, name: '36.9度'},
    {id: 12, name: '37.0度'},
    {id: 13, name: '37.1度'},
    {id: 14, name: '37.2度'},
    {id: 15, name: '37.3度'},
    {id: 16, name: '37.4度'},
    {id: 17, name: '37.5度'},
    {id: 18, name: '37.6度'},
    {id: 19, name: '37.7度'},
    {id: 20, name: '37.8度'},
    {id: 21, name: '37.9度'},
    {id: 22, name: '38.0度以上'},
  ]

end
