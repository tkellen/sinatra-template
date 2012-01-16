Sequel.migration do

  up do
    create_table(:template) do
      primary_key :id
    end
  end

  down do
    drop_table(:template)
  end

end

