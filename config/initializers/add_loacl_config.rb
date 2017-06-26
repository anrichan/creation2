# なぜか読み込まれないので、強制reloadをかける本来はやらない

Settings.add_source!("#{Rails.root}/config/settings.local.yml")
case Rails.env
when "development"
  Settings.add_source!("#{Rails.root}/config/settings/development.yml")
when "test"
  Settings.add_source!("#{Rails.root}/config/settings/test.yml")
when "production"
  Settings.add_source!("#{Rails.root}/config/settings/production.yml")
end
Settings.reload!