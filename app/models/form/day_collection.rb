class Form::DayCollection < Form::Base
  FORM_COUNT = 1 #ここで、作成したい登録フォームの数を指定
  attr_accessor :days 
  attribute :user_id
  def initialize(attributes = {})
    super attributes
    self.days = FORM_COUNT.times.map { Day.new() } unless self.days.present?
  end

  def days_attributes=(attributes)
    self.days = attributes.map { |_, v| Day.new(v) }
  end

  def save
    Day.transaction do
      self.days.map do |day|
        day.save
      end
    end
  end

end