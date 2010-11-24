class Participation < ActiveRecord::Base
  
  belongs_to :conversation, :dependent => :destroy
  belongs_to :person, :dependent => :destroy
  has_one :testimonial
  
  scope :unread, :include => :conversation, :conditions => "is_read = '0' OR conversations.status = 'pending'"
  
  def has_feedback?
    !testimonial.blank?
  end
  
  # Returns true if there is feedback from person
  def feedback_can_be_given?
    !has_feedback? && !feedback_skipped?
  end
  
end
