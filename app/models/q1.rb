class Q1 < ApplicationRecord
  belongs_to :patient
  belongs_to :question
  has_many :patients
  has_one :question
 

def self.patient(id)
		joins(:patients).where('`patients`.`patient_id` = ?', id)
end
def self.question(id)
		joins(:questions).where('`question`.`question_id` = ?', id)
end

def is_video?
	attachment.instance.attachment_content_type =~ %r(video)
end

def is_image?
		attachment.instance.attachment_content_type =~ %r(image)
end

end
