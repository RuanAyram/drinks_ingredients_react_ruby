ActiveAdmin.register_page "Dashboard" do
  menu priority: 1
  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Drinks" do
          table_for Drink.order("id desc").limit(10) do
            column(:title) { |drink| link_to(drink.title, admin_drink_path(drink)) }
            column(:source) { |drink| drink.source }
          end
        end
      end

      column do
        panel "Recent Users" do
          table_for AdminUser.order("id desc").limit(10).each do |_user|
            column(:email)    { |user| link_to(user.email, admin_admin_user_path(user)) }
          end
        end
      end
    end # columns
  end # content
end
