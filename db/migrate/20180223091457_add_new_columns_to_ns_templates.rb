class AddNewColumnsToNsTemplates < ActiveRecord::Migration
  def change
    add_column :ns_templates, :display_text, :string, length: 100, comment: 'the display text for the template'
    add_column :ns_templates, :template_code, :string, length: 50, comment: 'the unique code for the template'
    ns = NsTemplate.unscoped.all
    ns.each do |record|
      if record.approval_status == 'U' && record.approved_id.present?
        id = record.approved_id
      else
        id = record.id
      end
      record.update_columns(template_code: "TEM#{id}", display_text: "TEM#{id}")
    end
    change_column :ns_templates, :display_text, :string, null: false
    change_column :ns_templates, :template_code, :string, null: false
    remove_index :ns_templates, name: 'ns_templates_01'
    add_index :ns_templates, [:template_code, :approval_status], unique: true, name: 'ns_templates_01'
  end
end
