require 'spec_helper'

describe Post do
  it { should have_db_column :title }
end
