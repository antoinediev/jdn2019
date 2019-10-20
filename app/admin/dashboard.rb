# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    columns do
      Menu.all.map do |menu|
        column do
          panel menu.name do
            text_node menu.reserved_menus
            table_for menu.reservation_menus.where('count IS NOT NULL AND count > 0') do
              column(:reservation) { |reservation_menu| "#{reservation_menu.reservation.firstname} #{reservation_menu.reservation.lastname}" }
              column 'Nombre', :count
            end
          end
        end
      end
    end
  end
end
