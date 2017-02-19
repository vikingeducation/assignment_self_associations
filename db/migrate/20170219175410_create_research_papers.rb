class CreateResearchPapers < ActiveRecord::Migration[5.0]
  def change
    create_table :research_papers do |t|

    	t.string :title
    	t.string :author_name

      	t.timestamps
    end
  end
end
